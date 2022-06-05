package com.pimpmypc.api.user;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.pimpmypc.api.PimpMyPcApplication;
import com.pimpmypc.api.security.Role;
import com.pimpmypc.api.user.address.Address;
import com.pimpmypc.api.user.address.AddressRepository;
import com.pimpmypc.api.user.dto.UserAddressDto;
import com.pimpmypc.api.user.dto.UserPersonalDataDto;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@ExtendWith(SpringExtension.class)
@SpringBootTest(classes = PimpMyPcApplication.class)
@AutoConfigureMockMvc
@TestPropertySource(
        locations = "classpath:application-test.properties")
public class UserControllerIntegrationTest {

    @Autowired
    private MockMvc mvc;

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private AddressRepository addressRepository;

    private User user;

    @BeforeEach
    void beforeEach() {
        addressRepository.deleteAll();
        userRepository.deleteAll();

        user = new User();
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
        address.setCreatedAt(LocalDateTime.now());


        user.setAddress(address);
        user.setPassword(new BCryptPasswordEncoder(12).encode("qwerty321321"));

        userRepository.save(user);
    }

    @Test
    void shouldForbidAccessToUserAccountDetails() throws Exception {

        mvc.perform(get("/api/v1/users/" + 12)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isForbidden());
    }

    @Test
    void shouldReturnUserAccountDetails() throws Exception {


        String token = performLoginAndReturnToken();

        mvc.perform(get("/api/v1/users/" + user.getId())
                        .contentType(MediaType.APPLICATION_JSON).header("Authorization", "Bearer " + token))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.id").value(user.getId()))
                .andExpect(jsonPath("$.username").value(user.getUsername()));
    }

    @Test
    void shouldUpdateUserPersonalDetails() throws Exception {


        String token = performLoginAndReturnToken();

        assertEquals(user.getFirstName(), "John");

        UserPersonalDataDto personalDataDto = UserPersonalDataDto.builder().firstName("Mike").
                lastName(user.getLastName()).phone(user.getPhone()).email(user.getEmail()).build();


        mvc.perform(patch("/api/v1/users/" + user.getId() + "/personal").content(asJsonString(personalDataDto))
                        .contentType(MediaType.APPLICATION_JSON).header("Authorization", "Bearer " + token))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.firstName").value("Mike"));
    }


    @Test
    void shouldThrowUserNotFound() throws Exception {
        String token = performLoginAndReturnToken();

        assertEquals(user.getFirstName(), "John");

        UserPersonalDataDto personalDataDto = UserPersonalDataDto.builder().firstName("Mike").
                lastName(user.getLastName()).phone(user.getPhone()).email(user.getEmail()).build();

        mvc.perform(patch("/api/v1/users/920129310/personal").content(asJsonString(personalDataDto))
                        .contentType(MediaType.APPLICATION_JSON).header("Authorization", "Bearer " + token))
                .andExpect(status().isNotFound())
                .andExpect(jsonPath("$.message").value("User with given id do not exist"));
    }

    @Test
    void shouldUpdateUserAddressDetails() throws Exception {


        String token = performLoginAndReturnToken();

        assertEquals(user.getAddress().getCity(), "city1");

        UserAddressDto addressDto = UserAddressDto.builder().state("state1").
                city("Dallas").street(user.getAddress().getStreet()).zip(user.getAddress().getZip()).build();

        mvc.perform(patch("/api/v1/users/" + user.getId() + "/address").content(asJsonString(addressDto))
                        .contentType(MediaType.APPLICATION_JSON).header("Authorization", "Bearer " + token))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.city").value("Dallas"));
    }

    @Test
    void shouldForbidAccessToUserAddressDetails() throws Exception {
        UserAddressDto addressDto = UserAddressDto.builder().state("state1").
                city("Dallas").street("str1").zip("22-222").build();

        mvc.perform(patch("/api/v1/users/" + user.getId() + "/address").content(asJsonString(addressDto))
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isForbidden());
    }

    @Test
    void shouldForbidAccessToUpdateUserAuthDetails() throws Exception {
        mvc.perform(patch("/api/v1/users/" + user.getId() + "/auth")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isForbidden());
    }

    @Test
    void shouldUpdateUserAuthDetails() throws Exception {


        String token = performLoginAndReturnToken();


        mvc.perform(patch("/api/v1/users/" + user.getId() + "/auth").content("newSecretPass")
                        .contentType(MediaType.APPLICATION_JSON).header("Authorization", "Bearer " + token))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.username").value(user.getUsername()));
    }

    private String asJsonString(final Object obj) {
        try {
            return new ObjectMapper().writeValueAsString(obj);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private String performLoginAndReturnToken() throws Exception {
        MvcResult login = mvc.perform(post("/api/v1/auth/login").contentType(MediaType.APPLICATION_JSON)
                        .content("{\"username\": \"JD12\", \"password\": \"qwerty321321\"}")
                )
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andReturn();

        ObjectMapper mapper = new ObjectMapper();

        return mapper.readTree(login.getResponse().getContentAsString()).get("token").asText();
    }
}
