package com.pimpmypc.api.auth;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.pimpmypc.api.exception.AuthenticationException;
import com.pimpmypc.api.exception.UserException;
import com.pimpmypc.api.security.JwtTokenProvider;
import com.pimpmypc.api.security.Role;
import com.pimpmypc.api.user.User;
import com.pimpmypc.api.user.UserService;
import com.pimpmypc.api.user.address.Address;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.time.LocalDateTime;
import java.util.List;

@Service
@Slf4j
public class AuthService {

    private final UserService userService;
    private final PasswordEncoder passwordEncoder;
    private final AuthenticationManager authenticationManager;
    private final JwtTokenProvider jwtTokenProvider;
    private final ObjectMapper mapper;

    public AuthService(UserService userService, PasswordEncoder passwordEncoder, AuthenticationManager authenticationManager, JwtTokenProvider jwtTokenProvider) {
        this.userService = userService;
        this.passwordEncoder = passwordEncoder;
        this.authenticationManager = authenticationManager;
        this.jwtTokenProvider = jwtTokenProvider;
        this.mapper = new ObjectMapper();
    }

    public String signUp(User newUser) throws JsonProcessingException {
        if (userService.userAlreadyExist(newUser.getUsername())) {
            log.error("User " + newUser.getUsername() + " already exist in database.");
            throw new UserException("User " + newUser.getUsername() + " already exist in database.", HttpStatus.CONFLICT);
        } else if (newUser.getAddress() == null) {
            throw new RuntimeException("User must have an address.");
        } else {
            Address userAddress = newUser.getAddress();
            userAddress.setCreatedAt(LocalDateTime.now());
            userAddress.setModifiedAt(LocalDateTime.now());

            User user = User.builder().username(newUser.getUsername())
                    .password(passwordEncoder.encode(newUser.getPassword()))
                    .firstName(newUser.getFirstName()).lastName(newUser.getLastName())
                    .address(userAddress)
                    .phone(newUser.getPhone()).roles(List.of(Role.ROLE_USER))
                    .email(newUser.getEmail()).build();

            user.setCreatedAt(LocalDateTime.now());
            user.setModifiedAt(LocalDateTime.now());

            userService.saveUser(user);
            log.info(String.format("User %s added into database.", user.getUsername()));
            jwtTokenProvider.createToken(user.getUsername(), user.getRoles());

            ObjectNode userNode = mapper.createObjectNode();
            userNode.put("username", user.getUsername());

            return mapper.writerWithDefaultPrettyPrinter().writeValueAsString(userNode);
        }
    }

    public String signIn(String username, String password) {
        User user = userService.findByUsername(username);

        authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, password));

        log.info(String.format("Authentication successful for user %s.", username));

        String token = jwtTokenProvider.createToken(username, user.getRoles());

        ObjectNode userNode = mapper.createObjectNode();
        userNode.put("username", user.getUsername());
        userNode.put("userId", user.getId());
        userNode.put("token", token);

        try {
            return mapper.writerWithDefaultPrettyPrinter().writeValueAsString(userNode);
        } catch (AuthenticationException ex) {
            log.error("Authentication problem ", ex);
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, ex.getMessage());
        } catch (JsonProcessingException ex) {
            log.error("Login response processing error ", ex);
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "Error while creating login response object.");
        }
    }
}
