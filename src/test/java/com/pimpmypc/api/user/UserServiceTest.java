package com.pimpmypc.api.user;

import com.pimpmypc.api.exception.UserException;
import com.pimpmypc.api.security.Role;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.jupiter.api.function.Executable;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.beans.factory.annotation.Autowired;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.when;

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
        when(userRepository.findByUsername(user.getUsername()))
                .thenReturn(Optional.ofNullable(user));

        String username = user.getUsername();

        // when

        when(userRepository.findByUsername(user.getUsername())).thenReturn(Optional.of(user));

        // then

        User userResult = userService.findByUsername(username);

        assertThat(username).isEqualTo(userResult.getUsername());
    }

    @Test
    public void shouldSaveUser() {

        // given

        // when

        when(userRepository.save(any(User.class))).thenReturn(user);

        // then

        userService.saveUser(user);

        Mockito.verify(userRepository, Mockito.times(1)).save(any(User.class));
    }

    @Test
    public void shouldReturnAllUsers() {

        // given

        List<User> users = new ArrayList<>();
        users.add(user);
        users.add(user2);

        when(userRepository.findAll()).thenReturn(users);

        userRepository.save(user);
        userRepository.save(user2);

        // when

        when(userRepository.findAll()).thenReturn(users);

        // then

        List<User> returnedUsers = userService.getAllUsers();

        assertEquals(returnedUsers, users);

        Mockito.verify(userRepository, Mockito.times(2)).save(any(User.class));
        Mockito.verify(userRepository, Mockito.times(1)).findAll();
        assertThat(returnedUsers.size()).isEqualTo(users.size());
    }

    @Test
    public void shouldReturnUserByGivenId() {

        // given

        // when

        when(userRepository.findUserById(1L)).thenReturn(Optional.ofNullable(user));

        // then

        assertThat(userService.getUserById(user.getId()).getUsername()).isEqualTo(user.getUsername());
        assertThat(userService.getUserById(user.getId()).getEmail()).isEqualTo(user.getEmail());
    }

    @Test
    void shouldReturnTrueIfUserAlreadyExist() {

        // given

        // when

        when(userRepository.findByUsername(user.getUsername())).thenReturn(Optional.of(user));

        // then

        assertThat(userService.userAlreadyExist(user.getUsername())).isTrue();
    }

    @Test
    void shouldReturnFalseIfUserNotExist() {

        // given

        String username = "Mike";

        // when

        when(userRepository.findByUsername(user.getUsername())).thenReturn(Optional.empty());

        assertThat(userService.userAlreadyExist(user.getUsername())).isFalse();
    }

    @Test
    void shouldThrowErrorIfUsernameIsNotFound() {

        // given
        String usernameThatNotExist = "NoUser";

        // when

        when(userRepository.findByUsername(usernameThatNotExist)).thenThrow(new UserException(""));

        Executable executable = () -> userService.userAlreadyExist(usernameThatNotExist);

        // then

        assertThrows(UserException.class, executable);
    }

    @Test
    void shouldThrowUserRoleNotFound() {

        // given

        user.setRoles(null);

        // when

        Executable executable = () -> userService.saveUser(user);

        // then

        assertThrows(UserException.class, executable);
    }
}
