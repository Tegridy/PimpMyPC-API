package com.pimpmypc.api.user;

import com.pimpmypc.api.security.Role;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;


@ExtendWith(SpringExtension.class)
@DataJpaTest
@TestPropertySource(
        locations = "classpath:application-test.properties")
public class UserRepositoryTest {

    @Autowired
    private UserRepository userRepository;
    private User user;

    @Autowired
    public void setUserRepository(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @BeforeEach
    public void setUp() {
        user = new User();
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
        userRepository.deleteAll();
        user = null;
    }

    @Test
    public void shouldSaveUser() {
        userRepository.save(user);
        User fetchedUser = userRepository.findById(user.getId()).get();
        assertEquals(1, fetchedUser.getId());
    }

    @Test
    public void shouldReturnUserOfId() {
        User user1 = new User();
        user1.setUsername("JD222");
        user1.setFirstName("John2");
        user1.setLastName("Doe2");
        user1.setPhone("111-222-333");
        user1.setPassword("qwerty1231213");
        user1.setEmail("john2@doe.com");
        user1.setRoles(List.of(Role.ROLE_USER));
        user1.setCreatedAt(LocalDateTime.now());
        user1.setModifiedAt(LocalDateTime.now());

        User user2 = userRepository.save(user1);

        Optional<User> optional = userRepository.findById(user2.getId());
        assertEquals(user1.getId(), optional.get().getId());
    }
}