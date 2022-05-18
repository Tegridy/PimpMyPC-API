package com.pimpmypc.api.product;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.pimpmypc.api.BaseIntegrationTest;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

public class ProductControllerIntegrationTest extends BaseIntegrationTest {

    @Autowired
    private MockMvc mvc;
    @Autowired
    private ProductService productService;
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private ObjectMapper mapper;

    private Product product1;
    private Product product2;
    private Product product3;
    private List<Product> processorList;
    private List<Product> productList;

    @BeforeEach
    void setUp() {
        product1 = new Product();
        product1.setTitle("Intel Processor");
        product1.setBrand("Intel");
        product1.setModel("i5");
        product1.setPrice(new BigDecimal("225.38"));
        product1.setQuantity(8);
        product1.setDescription("This is a processor");
        product1.setCreatedAt(LocalDateTime.now());
        product1.setModifiedAt(LocalDateTime.now());

        product2 = new Product();
        product2.setTitle("AMD Processor");
        product2.setBrand("AMD");
        product2.setModel("FX");
        product2.setPrice(new BigDecimal("325.38"));
        product2.setQuantity(12);
        product2.setDescription("This is an AMD processor");
        product2.setCreatedAt(LocalDateTime.now());
        product2.setModifiedAt(LocalDateTime.now());

        processorList = new ArrayList<>();
        processorList.add(product1);
        processorList.add(product2);

        productRepository.deleteAll();
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

        Product product = new Product();
        product.setTitle("MOBO1");
        product.setBrand("Brand");
        product.setModel("Model");
        product.setPrice(new BigDecimal("33.38"));
        product.setQuantity(2);
        product.setDescription("This is a product");
        product.setCreatedAt(LocalDateTime.now());
        product.setModifiedAt(LocalDateTime.now());
        // product.setColors(Set.of(Color.GREEN, Color.BLACK));

        Product product2 = new Product();
        product2.setTitle("MOBO2");
        product2.setBrand("Brand2");
        product2.setModel("Model2");
        product2.setPrice(new BigDecimal("33.38"));
        product2.setQuantity(2);
        product2.setDescription("This is a product2");
        product2.setCreatedAt(LocalDateTime.now());
        product2.setModifiedAt(LocalDateTime.now());
        //product2.setColors(Set.of(Color.GREEN, Color.BLACK));

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

        Product product = new Product();
        product.setTitle("CASE1");
        product.setBrand("Brand");
        product.setModel("Model");
        product.setPrice(new BigDecimal("33.38"));
        product.setQuantity(2);
        product.setDescription("This is a product");
        product.setCreatedAt(LocalDateTime.now());
        product.setModifiedAt(LocalDateTime.now());
        // product.setColors(Set.of(Color.GREEN, Color.BLACK));

        Product product2 = new Product();
        product2.setTitle("CASE2");
        product2.setBrand("Brand2");
        product2.setModel("Model2");
        product2.setPrice(new BigDecimal("33.38"));
        product2.setQuantity(2);
        product2.setDescription("This is a product2");
        product2.setCreatedAt(LocalDateTime.now());
        product2.setModifiedAt(LocalDateTime.now());
        // product2.setColors(Set.of(Color.GREEN, Color.BLACK));

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

        Product product = new Product();
        product.setTitle("MEM1");
        product.setBrand("Brand");
        product.setModel("Model");
        product.setPrice(new BigDecimal("33.38"));
        product.setQuantity(2);
        product.setDescription("This is a product");
        product.setCreatedAt(LocalDateTime.now());
        product.setModifiedAt(LocalDateTime.now());

        Product product2 = new Product();
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
        Product product = new Product();
        product.setTitle("Keyboard1");
        product.setBrand("Brand");
        product.setModel("Model");
        product.setPrice(new BigDecimal("33.38"));
        product.setQuantity(2);
        product.setDescription("This is a product");
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
                .andExpect(jsonPath("$.content.length()").value(2));
    }

    @Test
    void shouldReturnOurChoiceProducts() throws Exception {

        productRepository.save(product1);
        productRepository.save(product2);

        mvc.perform(get("/api/v1/products/our-choice")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.content.length()").value(2));
    }

    @Test
    void shouldReturnNewestProduct() throws Exception {

        productRepository.save(product1);

        mvc.perform(get("/api/v1/products/newest")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.content[0].title").value("Intel Processor"));
    }
}