package com.pimpmypc.api.auth;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.pimpmypc.api.exception.AuthenticationException;
import com.pimpmypc.api.exception.UserException;
import com.pimpmypc.api.security.JwtTokenProvider;
import com.pimpmypc.api.security.Role;
import com.pimpmypc.api.user.User;
import com.pimpmypc.api.user.UserRepository;
import com.pimpmypc.api.user.UserService;
import com.pimpmypc.api.user.address.Address;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.jupiter.api.function.Executable;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import static org.assertj.core.api.AssertionsForInterfaceTypes.assertThat;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
public class AuthServiceTest {

    @InjectMocks
    private AuthService authService;
    @Mock
    private UserService userService;
    @Mock
    private UserRepository userRepository;
    @Mock
    private AuthenticationManager authenticationManager;
    @Mock
    private PasswordEncoder passwordEncoder;
    @Mock
    private JwtTokenProvider jwtTokenProvider;

    private ObjectMapper objectMapper;

    private User user;

    @BeforeEach
    public void setUP() {
        user = new User();
        user.setId(1L);
        user.setUsername("JD12");
        user.setFirstName("John");
        user.setLastName("Doe");
        user.setPhone("111-222-333");
        user.setPassword("qwerty321321");
        user.setEmail("john@doe.com");
        List<Role> roles = new ArrayList<>();
        roles.add(Role.ROLE_USER);
        user.setRoles(roles);
        user.setCreatedAt(LocalDateTime.now());
        user.setModifiedAt(LocalDateTime.now());

        Address address = new Address("street1", "city1", "state1", "11-111");
        user.setAddress(address);
        objectMapper = new ObjectMapper();
    }

    @AfterEach
    void tearDown() {
        user = null;
    }

    @Test
    public void shouldRegisterUser() throws JsonProcessingException {

        // given

        ObjectNode userNode = objectMapper.createObjectNode();
        userNode.put("username", user.getUsername());

        System.out.println(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(userNode));

        String username = objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(userNode);

        // when

        String result = authService.signUp(user);

        // then

        assertThat(username).isEqualTo(result);
    }

    @Test
    void shouldThrowUserAlreadyExist() throws JsonProcessingException {
        // given

        when(authService.signUp(user)).thenThrow(new UserException(""));

        // when

        Executable executable = () -> authService.signUp(user);

        // then

        assertThrows(UserException.class, executable);
    }

    @Test
    void shouldLoginUser() throws AuthenticationException, JsonProcessingException {

        // given
        String token = "jwtToken";

        ObjectNode userNode = objectMapper.createObjectNode();
        userNode.put("username", user.getUsername());
        userNode.put("userId", user.getId());
        userNode.put("token", token);

        String signUpResult = objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(userNode);


        when(userService.findByUsername(user.getUsername())).thenReturn(user);
        when(jwtTokenProvider.createToken(user.getUsername(), List.of(Role.ROLE_USER))).thenReturn(token);

        // when

        String result = authService.signIn(user.getUsername(), user.getPassword());

        // then

        assertThat(signUpResult).isEqualTo(result);
    }

    @Test
    void shouldThrowBadCredentials() {
        // given

        when(authenticationManager
                .authenticate(new UsernamePasswordAuthenticationToken(user.getUsername(), "wrong password")))
                .thenThrow(BadCredentialsException.class);

        // when

        Executable executable = () -> authService.signIn(user.getUsername(), "wrong password");

        // then

        assertThrows(BadCredentialsException.class, executable);
    }
}
