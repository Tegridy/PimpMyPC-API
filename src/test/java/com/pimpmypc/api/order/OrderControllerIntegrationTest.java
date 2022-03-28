package com.pimpmypc.api.order;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.pimpmypc.api.PimpMyPcApplication;
import com.pimpmypc.api.product.Product;
import com.pimpmypc.api.product.ProductRepository;
import com.pimpmypc.api.products.Color;
import com.pimpmypc.api.products.MotherboardSocket;
import com.pimpmypc.api.products.Processor;
import com.pimpmypc.api.security.Role;
import com.pimpmypc.api.user.User;
import com.pimpmypc.api.user.UserRepository;
import com.pimpmypc.api.user.UserService;
import com.pimpmypc.api.user.address.Address;
import com.pimpmypc.api.user.address.AddressRepository;
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

import javax.transaction.Transactional;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@ExtendWith(SpringExtension.class)
@SpringBootTest(classes = PimpMyPcApplication.class)
@AutoConfigureMockMvc
@TestPropertySource(
        locations = "classpath:application-test.properties")
@Transactional
class OrderControllerIntegrationTest {

    @Autowired
    private MockMvc mvc;
    @Autowired
    private OrderRepository orderRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private AddressRepository addressRepository;
    @Autowired
    private UserService userService;

    private Processor product1;
    private Processor product2;
    private User user;

    @BeforeEach
    void setUp() {
        product1 = new Processor();
        product1.setTitle("Intel Processor");
        product1.setBrand("Intel");
        product1.setModel("i5");
        product1.setPrice(new BigDecimal("225.38"));
        product1.setQuantity(8);
        product1.setDescription("This is a processor");
        product1.setCores(4);
        product1.setBaseClock("4444444");
        product1.setBoostClock("555555");
        product1.setTdp(120);
        product1.setIntegratedGraphic("UHD630");
        product1.setMultithreading(true);
        product1.setCreatedAt(LocalDateTime.now());
        product1.setModifiedAt(LocalDateTime.now());
        product1.setMotherboardSocket(MotherboardSocket.LGA1151);
        product1.setColors(Set.of(Color.RED));
        product1.setCreatedAt(LocalDateTime.now());

        product2 = new Processor();
        product2.setTitle("AMD Processor");
        product2.setBrand("AMD");
        product2.setModel("FX");
        product2.setPrice(new BigDecimal("325.38"));
        product2.setQuantity(12);
        product2.setDescription("This is an AMD processor");
        product2.setCores(8);
        product2.setBaseClock("3444444");
        product2.setBoostClock("5555555");
        product2.setTdp(220);
        product2.setIntegratedGraphic("Radeon");
        product2.setMultithreading(true);
        product2.setCreatedAt(LocalDateTime.now());
        product2.setModifiedAt(LocalDateTime.now());
        product2.setMotherboardSocket(MotherboardSocket.AM4);
        product2.setColors(Set.of(Color.BLACK));
        product2.setCreatedAt(LocalDateTime.now());

        Address address = new Address("street1", "city1", "state1", "11-111");
        address.setCreatedAt(LocalDateTime.now());

        user = new User();
        user.setUsername("JD12");
        user.setFirstName("John");
        user.setLastName("Doe");
        user.setPhone("111-222-333");
        user.setPassword(new BCryptPasswordEncoder(12).encode("qwerty321321"));
        user.setEmail("john@doe.com");
        user.setRoles(List.of(Role.ROLE_USER));
        user.setAddress(address);
        user.setCreatedAt(LocalDateTime.now());
        user.setModifiedAt(LocalDateTime.now());
    }

    @Test
    void shouldSaveOrder() throws Exception {

        List<Product> productList = new ArrayList<>();
        productList.add(product1);
        productList.add(product2);


        Address address = new Address("street1", "city1", "state1", "11-111");


        Order order = new Order("John", "Doe", OrderStatus.IN_PROGRESS, "mail@mail.com", "123456789",
                BigDecimal.valueOf(125), productList, address);


        mvc.perform(post("/api/v1/orders").content(asJsonString(order))
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.status").value("IN_PROGRESS"));
    }

    @Test
    void shouldReturnUserOrders() throws Exception {
        List<Product> productList = new ArrayList<>();
        productList.add(product1);
        productList.add(product2);

        productRepository.save(product1);
        productRepository.save(product2);

        Address address = new Address("street1", "city1", "state1", "11-111");
        address.setCreatedAt(LocalDateTime.now());

        addressRepository.save(address);

        Order order = new Order("John", "Doe", OrderStatus.IN_PROGRESS, "mail@mail.com", "123456789",
                BigDecimal.valueOf(125), productList, address);
        order.setCreatedAt(LocalDateTime.now());

        Order order2 = new Order("John", "Doe", OrderStatus.IN_PROGRESS, "mail@mail.com", "123456789",
                BigDecimal.valueOf(125), productList, address);
        order2.setCreatedAt(LocalDateTime.now());

        orderRepository.save(order);
        orderRepository.save(order2);

        List<Order> orderList = new ArrayList<>();
        orderList.add(order);
        orderList.add(order2);

        user.setUserOrders(orderList);
        user.setCreatedAt(LocalDateTime.now());
        userRepository.save(user);

        String token = "Bearer " + performLoginAndReturnToken();

        mvc.perform(get("/api/v1/orders")
                        .contentType(MediaType.APPLICATION_JSON).header("Authorization", token))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.content.length()").value(2))
                .andExpect(jsonPath("$.content[0].status").value("IN_PROGRESS"));
    }

    @Test
    void shouldReturnOrderDetails() throws Exception {
        List<Product> productList = new ArrayList<>();
        productList.add(product1);
        productList.add(product2);

        productRepository.save(product1);
        productRepository.save(product2);

        Address address = new Address("street1", "city1", "state1", "11-111");
        address.setCreatedAt(LocalDateTime.now());

        addressRepository.save(address);

        Order order = new Order("John", "Doe", OrderStatus.IN_PROGRESS, "mail@mail.com", "123456789",
                BigDecimal.valueOf(125), productList, address);
        order.setCreatedAt(LocalDateTime.now());

        long id = orderRepository.save(order).getId();

        List<Order> orderList = new ArrayList<>();
        orderList.add(order);

        user.setUserOrders(orderList);
        user.setCreatedAt(LocalDateTime.now());
        userRepository.save(user);

        String token = "Bearer " + performLoginAndReturnToken();

        mvc.perform(get("/api/v1/orders/" + id)
                        .contentType(MediaType.APPLICATION_JSON).header("Authorization", token))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.price").value(550.76))
                .andExpect(jsonPath("$.id").value(order.getId()));
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