package com.pimpmypc.api.user;

import com.pimpmypc.api.exception.UserNotFoundException;
import com.pimpmypc.api.exception.UserRoleNotFoundException;
import com.pimpmypc.api.security.Role;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;

@ExtendWith(MockitoExtension.class)
public class UserServiceTest {

    @Autowired
    @InjectMocks
    private UserServiceImpl userService;

    @Mock
    private UserRepository userRepository;

    private User user;
    private User user2;

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

        user2 = new User();
        user2.setId(2L);
        user2.setUsername("JD122");
        user2.setFirstName("John2");
        user2.setLastName("Doe2");
        user2.setPhone("111-222-444");
        user2.setPassword("qwerty123123");
        user2.setEmail("john2@doe.com");
        user2.setRoles(List.of(Role.ROLE_USER));
        user2.setCreatedAt(LocalDateTime.now());
        user2.setModifiedAt(LocalDateTime.now());
    }

    @AfterEach
    void tearDown() {
        userRepository.deleteAll();
        user = null;
        user2 = null;
    }

    @Test
    public void shouldFindUserByUsername() {
        Mockito.when(userRepository.findByUsername(user.getUsername()))
                .thenReturn(Optional.ofNullable(user));

        String username = user.getUsername();

        User user = userService.findByUsername(username);
        Assertions.assertNotNull(user);
        assertEquals(username, user.getUsername());
    }

    @Test
    @Transactional
    public void shouldSaveUser() {

        Mockito.when(userRepository.save(any(User.class))).thenReturn(user);

        userService.saveUser(user);

        Mockito.verify(userRepository, Mockito.times(1)).save(any(User.class));
    }

    @Test
    public void shouldReturnAllUsers() {
        List<User> users = new ArrayList<>();
        users.add(user);
        users.add(user2);

        Mockito.when(userRepository.findAll()).thenReturn(users);

        userRepository.save(user);
        userRepository.save(user2);

        List<User> returnedUsers = userService.getAllUsers();

        assertEquals(returnedUsers, users);

        Mockito.verify(userRepository, Mockito.times(1)).save(user);
        Mockito.verify(userRepository, Mockito.times(1)).save(user2);
        Mockito.verify(userRepository, Mockito.times(1)).findAll();
    }

    @Test
    public void shouldReturnUserByGivenId() {
        Mockito.when(userRepository.findUserById(1L)).thenReturn(Optional.ofNullable(user));
        assertEquals(userService.getUserById(user.getId()), user);
    }

    @Test
    void shouldReturnTrueIfUserAlreadyExist() {

        Mockito.doReturn(Optional.of(user)).when(userRepository).findByUsername(user.getUsername());

        assertTrue(userService.userAlreadyExist(user.getUsername()));
    }

    @Test
    void shouldReturnFalseIfUserNotExist() {

        String username = "Mike";

        Mockito.doReturn(Optional.empty()).when(userRepository).findByUsername(username);

        assertFalse(userService.userAlreadyExist(username));
    }

    @Test
    void shouldThrowErrorIfUsernameIsNotFound() {

        String usernameThatNotExist = "NoUser";

        Mockito.doThrow(new UserNotFoundException("User " + usernameThatNotExist + " not found."))
                .when(userRepository).findByUsername(usernameThatNotExist);

        assertThrows(UserNotFoundException.class, () -> userService.userAlreadyExist(usernameThatNotExist));
    }

    @Test
    void shouldThrowUserRoleNotFound() {
        user.setRoles(null);

        assertThrows(UserRoleNotFoundException.class, () -> userService.saveUser(user));
    }
}
