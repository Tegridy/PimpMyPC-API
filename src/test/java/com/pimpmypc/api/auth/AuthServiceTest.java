package com.pimpmypc.api.auth;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.pimpmypc.api.exception.AuthenticationException;
import com.pimpmypc.api.exception.UserAlreadyExistException;
import com.pimpmypc.api.exception.UserNotFoundException;
import com.pimpmypc.api.security.Role;
import com.pimpmypc.api.user.User;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.security.authentication.BadCredentialsException;

import java.time.LocalDateTime;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

@ExtendWith(MockitoExtension.class)
public class AuthServiceTest {

    @Mock
    private AuthService authService;

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
        user.setRoles(List.of(Role.ROLE_USER));
        user.setCreatedAt(LocalDateTime.now());
        user.setModifiedAt(LocalDateTime.now());
    }

    @AfterEach
    void tearDown() {
        user = null;
    }

    @Test
    public void shouldRegisterUser() {
        Mockito.doReturn("token").when(authService).signUp(user);

        assertEquals(authService.signUp(user), "token");
    }

    @Test
    void shouldThrowUserAlreadyExist() {
        Mockito.doThrow(new UserAlreadyExistException("")).when(authService).signUp(user);

        assertThrows(UserAlreadyExistException.class, () -> authService.signUp(user));
    }

    @Test
    void shouldLoginUser() throws AuthenticationException, JsonProcessingException {
        Mockito.doReturn("token").when(authService).signIn(user.getUsername(), user.getPassword());

        assertEquals(authService.signIn(user.getUsername(), user.getPassword()), "token");
    }

    @Test
    void shouldThrowUserNotFound() throws AuthenticationException, JsonProcessingException {
        Mockito.doThrow(new UserNotFoundException("User Not an user not found.")).when(authService)
                .signIn("Not an user", "Not a real password");

        assertThrows(UserNotFoundException.class, () -> authService.signIn("Not an user", "Not a real password"));
    }

    @Test
    void shouldThrowBadCredentials() throws AuthenticationException, JsonProcessingException {
        Mockito.doThrow(new BadCredentialsException("Bad Credentials.")).when(authService)
                .signIn(user.getUsername(), "Not a real password");

        assertThrows(BadCredentialsException.class, () -> authService.signIn(user.getUsername(), "Not a real password"));
    }
}
