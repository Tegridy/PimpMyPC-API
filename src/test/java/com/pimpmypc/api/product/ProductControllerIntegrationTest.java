package com.pimpmypc.api.product;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.pimpmypc.api.PimpMyPcApplication;
import com.pimpmypc.api.products.*;
import org.junit.jupiter.api.AfterEach;
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
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@ExtendWith(SpringExtension.class)
@SpringBootTest(classes = PimpMyPcApplication.class)
@AutoConfigureMockMvc
@TestPropertySource(
        locations = "classpath:application-test.properties")
@Transactional
public class ProductControllerIntegrationTest {

    @Autowired
    private MockMvc mvc;
    @Autowired
    private ProductService productService;
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private ObjectMapper mapper;

    private Processor product1;
    private Processor product2;
    private Product product3;
    private List<Processor> processorList;
    private List<Product> productList;

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

        processorList = new ArrayList<>();
        processorList.add(product1);
        processorList.add(product2);
    }

    @AfterEach
    void tearDown() {
        product1 = null;
        product2 = null;
    }

    @Test
    void shouldReturnAllProcessors() throws Exception {
        productRepository.save(product1);
        productRepository.save(product2);

        mvc.perform(get("/api/v1/products/processors")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.products.content.length()").value(2));
    }

    @Test
    void shouldReturnEmptyProcessorsArray() throws Exception {

        mvc.perform(get("/api/v1/products/processors")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.products.content.length()").value(0));
    }

    @Test
    void shouldReturnAllMotherboards() throws Exception {

        Motherboard product = new Motherboard();
        product.setMotherboardSocket(MotherboardSocket.LGA1200);
        product.setTitle("MOBO1");
        product.setBrand("Brand");
        product.setModel("Model");
        product.setPrice(new BigDecimal("33.38"));
        product.setQuantity(2);
        product.setDescription("This is a product");
        product.setCreatedAt(LocalDateTime.now());
        product.setModifiedAt(LocalDateTime.now());
        product.setMotherboardFormat(MotherboardFormat.Micro_ATX);
        product.setColors(Set.of(Color.GREEN, Color.BLACK));

        Motherboard product2 = new Motherboard();
        product2.setMotherboardSocket(MotherboardSocket.LGA1200);
        product2.setTitle("MOBO2");
        product2.setBrand("Brand2");
        product2.setModel("Model2");
        product2.setPrice(new BigDecimal("33.38"));
        product2.setQuantity(2);
        product2.setDescription("This is a product2");
        product2.setCreatedAt(LocalDateTime.now());
        product2.setModifiedAt(LocalDateTime.now());
        product2.setMotherboardFormat(MotherboardFormat.Micro_ATX);
        product2.setColors(Set.of(Color.GREEN, Color.BLACK));

        productRepository.save(product);
        productRepository.save(product2);

        mvc.perform(get("/api/v1/products/motherboards")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.products.content.length()").value(2));
    }

    @Test
    void shouldReturnEmptyMotherboardsArray() throws Exception {

        mvc.perform(get("/api/v1/products/motherboards")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.products.content.length()").value(0));
    }

    @Test
    void shouldReturnAllCases() throws Exception {

        Case product = new Case();

        product.setTitle("CASE1");
        product.setBrand("Brand");
        product.setModel("Model");
        product.setPrice(new BigDecimal("33.38"));
        product.setQuantity(2);
        product.setDescription("This is a product");
        product.setCreatedAt(LocalDateTime.now());
        product.setModifiedAt(LocalDateTime.now());
        product.setMotherboardFormats(Set.of(MotherboardFormat.Micro_ATX));
        product.setColors(Set.of(Color.GREEN, Color.BLACK));

        Case product2 = new Case();
        product2.setTitle("CASE2");
        product2.setBrand("Brand2");
        product2.setModel("Model2");
        product2.setPrice(new BigDecimal("33.38"));
        product2.setQuantity(2);
        product2.setDescription("This is a product2");
        product2.setCreatedAt(LocalDateTime.now());
        product2.setModifiedAt(LocalDateTime.now());
        product2.setMotherboardFormats(Set.of(MotherboardFormat.Micro_ATX));
        product2.setColors(Set.of(Color.GREEN, Color.BLACK));

        productRepository.save(product);
        productRepository.save(product2);

        mvc.perform(get("/api/v1/products/cases")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.products.content.length()").value(2));
    }

    @Test
    void shouldReturnEmptyCasesArray() throws Exception {

        mvc.perform(get("/api/v1/products/cases")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.products.content.length()").value(0));
    }

    @Test
    void shouldReturnAllRamMemory() throws Exception {

        Ram product = new Ram();
        product.setTitle("MEM1");
        product.setBrand("Brand");
        product.setModel("Model");
        product.setPrice(new BigDecimal("33.38"));
        product.setQuantity(2);
        product.setDescription("This is a product");
        product.setCreatedAt(LocalDateTime.now());
        product.setModifiedAt(LocalDateTime.now());

        Ram product2 = new Ram();
        product2.setTitle("MEM2");
        product2.setBrand("Brand2");
        product2.setModel("Model2");
        product2.setPrice(new BigDecimal("33.38"));
        product2.setQuantity(2);
        product2.setDescription("This is a product2");
        product2.setCreatedAt(LocalDateTime.now());
        product2.setModifiedAt(LocalDateTime.now());

        productRepository.save(product);
        productRepository.save(product2);

        mvc.perform(get("/api/v1/products/rams")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.products.content.length()").value(2));
    }

    @Test
    void shouldReturnEmptyRamArray() throws Exception {

        mvc.perform(get("/api/v1/products/rams")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.products.content.length()").value(0));
    }


    @Test
    void shouldFindProductById() throws Exception {
        Keyboard product = new Keyboard();
        product.setTitle("Keyboard1");
        product.setBrand("Brand");
        product.setModel("Model");
        product.setPrice(new BigDecimal("33.38"));
        product.setQuantity(2);
        product.setDescription("This is a product");
        product.setConnection("Wired");
        product.setCreatedAt(LocalDateTime.now());
        product.setModifiedAt(LocalDateTime.now());

        Long id = productRepository.save(product).getId();

        mvc.perform(get("/api/v1/products/" + id)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.title").value(product.getTitle()));
    }

    @Test
    void shouldNotFindProductById() throws Exception {
        mvc.perform(get("/api/v1/products/" + 999999999)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isNotFound())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.message").value("Product with id: 999999999 not found"));
    }

    @Test
    void shouldFindProductOnSearch() throws Exception {

        productRepository.save(product1);
        productRepository.save(product2);

        mvc.perform(get("/api/v1/products/search")
                        .param("productName", "processor")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.content.length()").value(2));
    }

    @Test
    void shouldFindProductByCategoryOnSearch() throws Exception {

        productRepository.save(product1);
        productRepository.save(product2);

        mvc.perform(get("/api/v1/products/search")
                        .param("productName", "proc")
                        .param("categoryName", "Computer assets")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.content.length()").value(2))
                .andExpect(jsonPath("$.content[0].title").value("Intel Processor"))
                .andExpect(jsonPath("$.content[1].title").value("AMD Processor"));
    }

    @Test
    void shouldReturnTopSellingProducts() throws Exception {

        productRepository.save(product1);
        productRepository.save(product2);

        mvc.perform(get("/api/v1/products/top")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(2));
    }

    @Test
    void shouldReturnOurChoiceProducts() throws Exception {

        productRepository.save(product1);
        productRepository.save(product2);

        mvc.perform(get("/api/v1/products/our-choice")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(2));
    }

    @Test
    void shouldReturnNewestProduct() throws Exception {

        productRepository.save(product1);

        mvc.perform(get("/api/v1/products/newest")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.title").value("Intel Processor"));
    }
}