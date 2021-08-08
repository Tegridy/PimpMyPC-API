package com.pimpmypc.api.user;

import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@ExtendWith(SpringExtension.class)
@WebMvcTest
public class UserServiceTest {

//    @Autowired
//    private UserService userService;
//    @MockBean
//    private UserRepository userRepository;
//
//    private User user;
//
//    @Before
//    public void setUP() {
//        user = new User();
//        user.setUsername("JD12");
//        user.setFirstName("John");
//        user.setLastName("Doe");
//        user.setPhone("111-222-333");
//        user.setPassword("qwerty321321");
//        user.setEmail("john@doe.com");
//        user.setRoles(List.of(Role.ROLE_USER));
//        user.setCreatedAt(LocalDateTime.now());
//        user.setModifiedAt(LocalDateTime.now());
//
//        Mockito.when(userService.findByUsername(user.getUsername()))
//                .thenReturn(Optional.of(user));
//
//        Mockito.when(userService.saveUser(any(User.class))).thenReturn(user);
//    }

//    @Test
//    @Transactional
//    public void shouldFindUserByUsername() {
//        String username = "test";
//
//        Optional<User> user = userService.findByUsername(username);
//        Assertions.assertNotNull(user);
//        Assertions.assertEquals(username, user.get().getUsername());
//    }
//
//    @Test
//    public void shouldSaveUser() {
//
//        User savedUser = userService.saveUser(user);
//
//        Assertions.assertEquals(user.getUsername(), savedUser.getUsername());
//    }
//
//    @Test
//    public void shouldThrowExceptionWhenSaveUser() {
//
//        userService.saveUser(user);
//        userService.saveUser(user);
//    }
}
