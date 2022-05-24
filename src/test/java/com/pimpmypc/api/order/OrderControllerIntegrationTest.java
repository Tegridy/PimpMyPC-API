package com.pimpmypc.api.order;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.pimpmypc.api.BaseIntegrationTest;
import com.pimpmypc.api.cart.Cart;
import com.pimpmypc.api.order.dto.CustomerOrderDataDto;
import com.pimpmypc.api.product.Product;
import com.pimpmypc.api.product.ProductRepository;
import com.pimpmypc.api.security.Role;
import com.pimpmypc.api.user.User;
import com.pimpmypc.api.user.UserRepository;
import com.pimpmypc.api.user.address.Address;
import com.pimpmypc.api.user.address.AddressRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

class OrderControllerIntegrationTest extends BaseIntegrationTest {

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


    private Product product1;
    private Product product2;
    private User user;

    @BeforeEach
    void setUp() {
        product1 = new Product();
        product1.setId(2L);
        product1.setTitle("Intel Processor");
        product1.setBrand("Intel");
        product1.setModel("i5");
        product1.setPrice(new BigDecimal("225.38"));
        product1.setQuantity(8);
        product1.setDescription("This is a processor");
        product1.setCreatedAt(LocalDateTime.now());
        product1.setModifiedAt(LocalDateTime.now());
        product1.setCreatedAt(LocalDateTime.now());

        product2 = new Product();
        product2.setId(8L);
        product2.setTitle("AMD Processor");
        product2.setBrand("AMD");
        product2.setModel("FX");
        product2.setPrice(new BigDecimal("325.38"));
        product2.setQuantity(12);
        product2.setDescription("This is an AMD processor");
        product2.setCreatedAt(LocalDateTime.now());
        product2.setModifiedAt(LocalDateTime.now());
        product2.setCreatedAt(LocalDateTime.now());


        List<Role> roles = new ArrayList<>();
        roles.add(Role.ROLE_USER);

        user = new User();
        user.setUsername("JD12");
        user.setFirstName("John");
        user.setLastName("Doe");
        user.setPhone("111-222-333");
        user.setPassword(new BCryptPasswordEncoder(12).encode("qwerty321321"));
        user.setEmail("john@doe.com");
        user.setRoles(roles);
        user.setCreatedAt(LocalDateTime.now());
        user.setModifiedAt(LocalDateTime.now());

        productRepository.deleteAll();
        orderRepository.deleteAll();
        addressRepository.deleteAll();
        userRepository.deleteAll();
    }

    @Test
    void shouldSaveOrder() throws Exception {

        Product p = productRepository.save(product1);
        Product p2 = productRepository.save(product2);

        List<Product> productList = new ArrayList<>();
        productList.add(p);
        productList.add(p2);


        Address address = new Address("street1", "city1", "state1", "11-111");

        Cart cart = new Cart();
        cart.setProducts(productList);
        cart.setTotalPrice(p.getPrice().add(p2.getPrice()));


        CustomerOrderDataDto order = CustomerOrderDataDto.builder()
                .customerFirstName("John").customerLastName("Doe")
                .customerEmail("mail@mail.com").customerPhone("123456789")
                .deliveryAddress(address)
                .cart(cart).build();


        mvc.perform(post("/api/v1/orders").content(asJsonString(order))
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.status").value("IN_PROGRESS"));
    }

    @Test
    void shouldReturnUserOrders() throws Exception {

        Product savedProduct1 = productRepository.save(product1);
        Product savedProduct2 = productRepository.save(product2);

        Address address = new Address("street1", "city1", "state1", "11-111");
        address.setCreatedAt(LocalDateTime.now());

        Order order = new Order("John", "Doe", OrderStatus.IN_PROGRESS,
                "mail@mail.com", "123456789",
                savedProduct1.getPrice().add(savedProduct2.getPrice()), List.of(savedProduct1, savedProduct2), address);
        Order order2 = new Order("John", "Doe", OrderStatus.IN_PROGRESS,
                "mail@mail.com", "123456789",
                savedProduct1.getPrice().add(savedProduct2.getPrice()), List.of(savedProduct1, savedProduct2), address);

        order.setCreatedAt(LocalDateTime.now());
        order2.setCreatedAt(LocalDateTime.now());

        user.addUserOrder(order);
        order.setUser(user);
        user.addUserOrder(order2);
        order2.setUser(user);

        user.setAddress(address);

        userRepository.save(user);

        String token = "Bearer " + performLoginAndReturnToken();

        mvc.perform(get("/api/v1/orders")
                        .contentType(MediaType.APPLICATION_JSON).header("Authorization", token))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.content.length()").value(2))
                .andExpect(jsonPath("$.content[0].status").value("IN_PROGRESS"))
                .andExpect(jsonPath("$.content[1].status").value("IN_PROGRESS"));
    }

    @Test
    void shouldReturnOrderDetails() throws Exception {
        List<Product> productList = new ArrayList<>();

        Product p1 = productRepository.save(product1);
        Product p2 = productRepository.save(product2);

        productList.add(p1);
        productList.add(p2);

        Address address = new Address("street1", "city1", "state1", "11-111");
        address.setCreatedAt(LocalDateTime.now());

        Order order = new Order("John", "Doe", OrderStatus.IN_PROGRESS, "mail@mail.com", "123456789",
                BigDecimal.valueOf(125), productList, address);
        order.setCreatedAt(LocalDateTime.now());


        user.addUserOrder(order);
        order.setUser(user);

        userRepository.save(user);

        long id = orderRepository.save(order).getId();

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