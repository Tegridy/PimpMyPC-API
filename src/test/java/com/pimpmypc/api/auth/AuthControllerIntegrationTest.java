package com.pimpmypc.api.auth;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.pimpmypc.api.PimpMyPcApplication;
import com.pimpmypc.api.security.Role;
import com.pimpmypc.api.user.User;
import com.pimpmypc.api.user.UserRepository;
import com.pimpmypc.api.user.UserService;
import org.hamcrest.Matchers;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;

import javax.transaction.Transactional;
import java.time.LocalDateTime;
import java.util.List;

import static org.hamcrest.Matchers.notNullValue;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@ExtendWith(SpringExtension.class)
@SpringBootTest(classes = PimpMyPcApplication.class)
@AutoConfigureMockMvc
@TestPropertySource(
        locations = "classpath:application-test.properties")
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)

public class AuthControllerIntegrationTest {

    User user;

    @Autowired
    private MockMvc mvc;
    @Autowired
    private UserService userService;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private ObjectMapper mapper;

    private String userJson;

    @BeforeEach
    public void initUsers() throws JsonProcessingException {
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

        userJson = mapper.writeValueAsString(user);
    }

    @Test
    @Transactional
    public void shouldRegisterUserAndReturn201() throws Exception {

        mvc.perform(post("/api/v1/auth/register")
                        .contentType(MediaType.APPLICATION_JSON).content(userJson))
                .andExpect(status().isCreated())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.token").value(notNullValue()));
    }

    @Test
    @Transactional
    public void shouldThrowUserAlreadyExistAndReturn409() throws Exception {

        userRepository.save(user);

        mvc.perform(post("/api/v1/auth/register")
                        .contentType(MediaType.APPLICATION_JSON).content(userJson))
                .andExpect(status().isConflict())
                .andExpect(status().reason("User " + user.getUsername() + " already exist in database."));
    }

    @Test
    @Transactional
    public void shouldCheckFirstNameAndLastNameAreRequired() throws Exception {
        user.setLastName(null);
        user.setFirstName(null);

        userJson = mapper.writeValueAsString(user);

        mvc.perform(post("/api/v1/auth/register")
                        .contentType(MediaType.APPLICATION_JSON).content(userJson))
                .andExpect(status().isBadRequest())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.details[*]")
                        .value(Matchers.containsInAnyOrder("First name is required.", "Last name is required.")));
    }

    @Test
    @Transactional
    public void shouldCheckUsernameAndEmailAreRequired() throws Exception {
        user.setUsername(null);
        user.setEmail(null);

        System.out.println(user.getPassword());

        userJson = mapper.writeValueAsString(user);

        mvc.perform(post("/api/v1/auth/register")
                        .contentType(MediaType.APPLICATION_JSON).content(userJson))
                .andExpect(status().isBadRequest())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.details[*]")
                        .value(Matchers.containsInAnyOrder("Username is required.", "E-mail is required.")));
    }

    @Test
    @Transactional
    public void shouldCheckFirstNameAndLastNameLength() throws Exception {
        user.setFirstName("b");
        user.setLastName("t");

        userJson = mapper.writeValueAsString(user);

        mvc.perform(post("/api/v1/auth/register")
                        .contentType(MediaType.APPLICATION_JSON).content(userJson))
                .andExpect(status().isBadRequest())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.details[*]")
                        .value(Matchers.containsInAnyOrder("First name length must have 2 to 50 characters.",
                                "Last name length must have 2 to 50 characters.")));
    }

    @Test
    @Transactional
    public void shouldCheckUsernameLength() throws Exception {
        user.setUsername("tom");

        userJson = mapper.writeValueAsString(user);

        mvc.perform(post("/api/v1/auth/register")
                        .contentType(MediaType.APPLICATION_JSON).content(userJson))
                .andExpect(status().isBadRequest())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.details[0]").value("Username length must have 4 to 50 characters."));
    }

    @Test
    @Transactional
    public void shouldCheckPasswordLength() throws Exception {
        user.setPassword("qwerty");

        userJson = mapper.writeValueAsString(user);

        mvc.perform(post("/api/v1/auth/register")
                        .contentType(MediaType.APPLICATION_JSON).content(userJson))
                .andExpect(status().isBadRequest())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.details[0]").value("Password must have at least 8 characters."));
    }

    @Test
    void shouldLoginAndGetContent() throws Exception {

        MvcResult login = mvc.perform(post("/api/v1/auth/login").contentType(MediaType.APPLICATION_JSON)
                        .content("{\"username\": \"test\", \"password\": \"qwerty\"}")
                )
                .andDo(print())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().is(200))
                .andReturn();

        String token = mapper.readTree(login.getResponse().getContentAsString()).get("token").asText();
        System.out.println(token);

        mvc.perform(get("/api/v1/auth/secured")
                        .header("Authorization", "Bearer " + token)
                )
                .andDo(print())
                .andExpect(status().is(200))
                .andExpect(content().string("secured"));

        mvc.perform(get("/api/v1/auth/secured"))
                .andDo(print())
                .andExpect(status().is(403));

    }

    @Test
    public void shouldThrowErrorWhenUsernameIsNotFound() throws Exception {
        mvc.perform(post("/api/v1/auth/login").contentType(MediaType.APPLICATION_JSON)
                        .content("{\"username\": \"test3\", \"password\": \"qwerty\"}")
                )
                .andDo(print())
                .andExpect(status().isNotFound())
                .andExpect(jsonPath("$").value("User test3 not found."));
    }

    @Test
    public void shouldThrowErrorWhenPasswordIsWrong() throws Exception {
        mvc.perform(post("/api/v1/auth/login").contentType(MediaType.APPLICATION_JSON)
                        .content("{\"username\": \"test\", \"password\": \"qwerty3\"}")
                )
                .andDo(print())
                .andExpect(status().isForbidden())
                .andExpect(jsonPath("$").value("Bad credentials"));
    }
}
