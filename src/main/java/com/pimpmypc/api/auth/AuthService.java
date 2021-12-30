package com.pimpmypc.api.auth;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.pimpmypc.api.exception.AuthenticationException;
import com.pimpmypc.api.exception.UserAlreadyExistException;
import com.pimpmypc.api.exception.UserNotFoundException;
import com.pimpmypc.api.security.JwtTokenProvider;
import com.pimpmypc.api.security.Role;
import com.pimpmypc.api.user.Address;
import com.pimpmypc.api.user.User;
import com.pimpmypc.api.user.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
@Slf4j
public class AuthService {

    private final UserService userService;
    private final PasswordEncoder passwordEncoder;
    private final AuthenticationManager authenticationManager;
    private final JwtTokenProvider jwtTokenProvider;

    public AuthService(UserService userService, PasswordEncoder passwordEncoder, AuthenticationManager authenticationManager, JwtTokenProvider jwtTokenProvider) {
        this.userService = userService;
        this.passwordEncoder = passwordEncoder;
        this.authenticationManager = authenticationManager;
        this.jwtTokenProvider = jwtTokenProvider;
    }

    public String signUp(User newUser) {
        if (userService.userAlreadyExist(newUser.getUsername())) {
            log.error("User " + newUser.getUsername() + " already exist in database.");
            throw new UserAlreadyExistException("User " + newUser.getUsername() + " already exist in database.");
        } else if (newUser.getAddress() == null) {
            throw new RuntimeException("User must have an address.");
        } else {
            Address userAddress = newUser.getAddress();
            userAddress.setCreatedAt(LocalDateTime.now());
            userAddress.setModifiedAt(LocalDateTime.now());


            User user = new User();
            user.setUsername(newUser.getUsername());
            user.setPassword(passwordEncoder.encode(newUser.getPassword()));
            user.setFirstName(newUser.getFirstName());
            user.setAddress(userAddress);
            user.setLastName(newUser.getLastName());
            user.setPhone(newUser.getPhone());
            user.setRoles(List.of(Role.ROLE_USER));
            user.setEmail(newUser.getEmail());
            user.setCreatedAt(LocalDateTime.now());
            user.setModifiedAt(LocalDateTime.now());

            userService.saveUser(user);
            log.info(String.format("User %s added into database.", user.getUsername()));
            return jwtTokenProvider.createToken(user.getUsername(), user.getRoles());
        }
    }

    public String signIn(String username, String password) throws AuthenticationException, JsonProcessingException {
        authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, password));

        User user = userService.findByUsername(username)
                .orElseThrow(() -> new UserNotFoundException(String.format("User %s not found.", username)));

        log.info(String.format("Authentication successful for user %s.", username));

        String token = jwtTokenProvider.createToken(username, user.getRoles());

        ObjectMapper mapper = new ObjectMapper();

        ObjectNode userNode = mapper.createObjectNode();
        userNode.put("username", user.getUsername());
        userNode.put("userId", user.getId());
        userNode.put("token", token);

        return mapper.writerWithDefaultPrettyPrinter().writeValueAsString(userNode);
    }
}
