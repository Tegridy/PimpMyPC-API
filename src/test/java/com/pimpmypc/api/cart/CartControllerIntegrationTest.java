package com.pimpmypc.api.cart;

import com.pimpmypc.api.PimpMyPcApplication;
import com.pimpmypc.api.product.ProductRepository;
import com.pimpmypc.api.product.ProductService;
import com.pimpmypc.api.products.MotherboardSocket;
import com.pimpmypc.api.products.Processor;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.web.servlet.MockMvc;

import javax.transaction.Transactional;
import java.math.BigDecimal;
import java.time.LocalDateTime;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.put;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@ExtendWith(SpringExtension.class)
@SpringBootTest(classes = PimpMyPcApplication.class)
@AutoConfigureMockMvc
@TestPropertySource(
        locations = "classpath:application-test.properties")
@Transactional
class CartControllerIntegrationTest {

    @Autowired
    private MockMvc mvc;

    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private CartService cartService;
    @Autowired
    private ProductService productService;

    private Processor product1;
    private Processor product2;
    private Processor product3;

    @BeforeEach
    void setUp() {
        product1 = new Processor();
        product1.setPrice(BigDecimal.valueOf(991.81));
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

        product2 = new Processor();
        product2.setPrice(BigDecimal.valueOf(521.98));
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

        product3 = new Processor();
        product3.setPrice(BigDecimal.valueOf(314.25));
        product3.setTitle("AMD Processor");
        product3.setBrand("AMD");
        product3.setModel("FX");
        product3.setPrice(new BigDecimal("925.38"));
        product3.setQuantity(12);
        product3.setDescription("This is an AMD processor");
        product3.setCores(8);
        product3.setBaseClock("3444444");
        product3.setBoostClock("5555555");
        product3.setTdp(220);
        product3.setIntegratedGraphic("Radeon");
        product3.setMultithreading(true);
        product3.setCreatedAt(LocalDateTime.now());
        product3.setModifiedAt(LocalDateTime.now());
        product3.setMotherboardSocket(MotherboardSocket.AM4);
    }

    @Test
    void shouldReturnBadRequestIfNoItemsInCart() throws Exception {

        mvc.perform(put("/api/v1/cart")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isBadRequest());
    }
}