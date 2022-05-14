package com.pimpmypc.api.auth;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.pimpmypc.api.BaseIntegrationTest;
import com.pimpmypc.api.security.Role;
import com.pimpmypc.api.user.User;
import com.pimpmypc.api.user.UserRepository;
import com.pimpmypc.api.user.UserService;
import com.pimpmypc.api.user.address.Address;
import org.hamcrest.Matchers;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;

import java.time.LocalDateTime;
import java.util.List;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

public class AuthControllerIntegrationTest extends BaseIntegrationTest {

    User user;
    Address address;

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
        address = new Address("street1", "city1", "state1", "11-111");
        address.setCreatedAt(LocalDateTime.now());

        user = new User();
        user.setUsername("JD12");
        user.setFirstName("John");
        user.setLastName("Doe");
        user.setPhone("111-222-333");
        user.setPassword("qwerty321321");
        user.setEmail("john@doe.com");
        user.setRoles(List.of(Role.ROLE_USER));
        user.setAddress(address);
        user.setCreatedAt(LocalDateTime.now());
        user.setModifiedAt(LocalDateTime.now());

        userJson = mapper.writeValueAsString(user);

        userRepository.deleteAll();
    }

    @Test
    public void shouldRegisterUser() throws Exception {

        mvc.perform(post("/api/v1/auth/register")
                        .contentType(MediaType.APPLICATION_JSON).content(userJson))
                .andExpect(status().isCreated())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.username").value(user.getUsername()));
    }

    @Test
    public void shouldThrowUserAlreadyExist() throws Exception {

        userRepository.save(user);

        mvc.perform(post("/api/v1/auth/register")
                        .contentType(MediaType.APPLICATION_JSON).content(userJson))
                .andExpect(status().isConflict())
                .andExpect(jsonPath("$.message").value("User " + user.getUsername() + " already exist in database."));
    }

    @Test
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
    public void shouldCheckUsernameAndEmailAreRequired() throws Exception {
        user.setUsername(null);
        user.setEmail(null);

        userJson = mapper.writeValueAsString(user);

        mvc.perform(post("/api/v1/auth/register")
                        .contentType(MediaType.APPLICATION_JSON).content(userJson))
                .andExpect(status().isBadRequest())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.details[*]")
                        .value(Matchers.containsInAnyOrder("Username is required.", "E-mail is required.")));
    }

    @Test
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
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder(15);
        String pass = bCryptPasswordEncoder.encode(user.getPassword());
        user.setPassword(pass);
        userRepository.save(user);

        MvcResult login = mvc.perform(post("/api/v1/auth/login").contentType(MediaType.APPLICATION_JSON)
                        .content("{\"username\": \"JD12\", \"password\": \"qwerty321321\"}")
                )
                .andDo(print())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andReturn();

        String token = mapper.readTree(login.getResponse().getContentAsString()).get("token").asText();

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
                .andExpect(jsonPath("$.message").value("User test3 not found."));
    }

    @Test
    public void shouldThrowErrorWhenPasswordIsWrong() throws Exception {
        userRepository.save(user);

        mvc.perform(post("/api/v1/auth/login").contentType(MediaType.APPLICATION_JSON)
                        .content("{\"username\": \"JD12\", \"password\": \"qwerty321321\"}")
                )
                .andDo(print())
                .andExpect(status().isForbidden())
                .andExpect(jsonPath("$.message").value("Bad credentials"));
    }
}
