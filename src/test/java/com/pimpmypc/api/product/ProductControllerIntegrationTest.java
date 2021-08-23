package com.pimpmypc.api.product;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.pimpmypc.api.PimpMyPcApplication;
import com.pimpmypc.api.products.*;
import org.hamcrest.Matchers;
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
    private ProductRepository<Product> productRepository;
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

        product3 = new Product();
        product3.setTitle("Generic product");
        product3.setBrand("Brand");
        product3.setModel("Model");
        product3.setPrice(new BigDecimal("33.38"));
        product3.setQuantity(2);
        product3.setDescription("This is a product");
        product3.setCreatedAt(LocalDateTime.now());
        product3.setModifiedAt(LocalDateTime.now());

        productList = new ArrayList<>();
        productList.add(product1);
        productList.add(product2);
        productList.add(product3);
    }

    @AfterEach
    void tearDown() {
        product1 = null;
        product2 = null;
        productList.clear();
    }

    @Test
    void shouldReturnAllProcessors() throws Exception {
        productRepository.save(product1);
        productRepository.save(product2);

        mvc.perform(get("/api/v1/products/processors")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(2));
    }

    @Test
    void shouldReturnAllProducts() throws Exception {
        productRepository.save(product1);
        productRepository.save(product2);
        productRepository.save(product3);

        mvc.perform(get("/api/v1/products")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(3));
    }

    @Test
    void shouldReturnEmptyProductsArray() throws Exception {

        mvc.perform(get("/api/v1/products")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(0));
    }

    @Test
    void shouldReturnEmptyProcessorsArray() throws Exception {

        mvc.perform(get("/api/v1/products/processors")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(0));
    }

    @Test
    void shouldReturnProductByGivenId() throws Exception {
        Product product = productRepository.save(product1);
        long id = product.getId();

        mvc.perform(get("/api/v1/products/" + id)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.title").value("Intel Processor"));
    }

    @Test
    void shouldReturnProductNotFound() throws Exception {
        mvc.perform(get("/api/v1/products/99")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isNotFound())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.details[0]").value("Product with id 99 not found."));
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
        product.setMotherboardFormats(MotherboardFormat.Micro_ATX);
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
        product2.setMotherboardFormats(MotherboardFormat.Micro_ATX);
        product2.setColors(Set.of(Color.GREEN, Color.BLACK));

        productRepository.save(product);
        productRepository.save(product2);

        mvc.perform(get("/api/v1/products/motherboards")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(2));
    }

    @Test
    void shouldReturnEmptyMotherboardsArray() throws Exception {

        mvc.perform(get("/api/v1/products/motherboards")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(0));
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
                .andExpect(jsonPath("$.length()").value(2));
    }

    @Test
    void shouldReturnEmptyCasesArray() throws Exception {

        mvc.perform(get("/api/v1/products/cases")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(0));
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
                .andExpect(jsonPath("$.length()").value(2));
    }

    @Test
    void shouldReturnEmptyRamArray() throws Exception {

        mvc.perform(get("/api/v1/products/rams")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(0));
    }

    @Test
    void shouldReturnAllMouses() throws Exception {

        Mouse product = new Mouse();
        product.setTitle("Mouse1");
        product.setBrand("Brand");
        product.setModel("Model");
        product.setPrice(new BigDecimal("33.38"));
        product.setQuantity(2);
        product.setDescription("This is a product");
        product.setCreatedAt(LocalDateTime.now());
        product.setModifiedAt(LocalDateTime.now());

        Mouse product2 = new Mouse();
        product2.setTitle("Mouse2");
        product2.setBrand("Brand2");
        product2.setModel("Model2");
        product2.setPrice(new BigDecimal("33.38"));
        product2.setQuantity(2);
        product2.setDescription("This is a product2");
        product2.setCreatedAt(LocalDateTime.now());
        product2.setModifiedAt(LocalDateTime.now());

        productRepository.save(product);
        productRepository.save(product2);

        mvc.perform(get("/api/v1/products/mouses")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(2));
    }

    @Test
    void shouldReturnEmptyMousesArray() throws Exception {

        mvc.perform(get("/api/v1/products/mouses")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(0));
    }

    @Test
    void shouldReturnAllKeyboards() throws Exception {

        Keyboard product = new Keyboard();
        product.setTitle("Keyboard1");
        product.setBrand("Brand");
        product.setModel("Model");
        product.setPrice(new BigDecimal("33.38"));
        product.setQuantity(2);
        product.setDescription("This is a product");
        product.setCreatedAt(LocalDateTime.now());
        product.setModifiedAt(LocalDateTime.now());

        Keyboard product2 = new Keyboard();
        product2.setTitle("Keyboard2");
        product2.setBrand("Brand2");
        product2.setModel("Model2");
        product2.setPrice(new BigDecimal("33.38"));
        product2.setQuantity(2);
        product2.setDescription("This is a product2");
        product2.setCreatedAt(LocalDateTime.now());
        product2.setModifiedAt(LocalDateTime.now());

        productRepository.save(product);
        productRepository.save(product2);

        mvc.perform(get("/api/v1/products/keyboards")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(2));
    }

    @Test
    void shouldReturnEmptyKeyboardsArray() throws Exception {

        mvc.perform(get("/api/v1/products/keyboards")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(0));
    }

    @Test
    void shouldReturnAllMonitors() throws Exception {

        Monitor product = new Monitor();
        product.setTitle("Monitor1");
        product.setBrand("Brand");
        product.setModel("Model");
        product.setPrice(new BigDecimal("33.38"));
        product.setQuantity(2);
        product.setDescription("This is a product");
        product.setAspectRatio("16:9");
        product.setRefreshRate(60);
        product.setCreatedAt(LocalDateTime.now());
        product.setModifiedAt(LocalDateTime.now());

        Monitor product2 = new Monitor();
        product2.setTitle("Monitor2");
        product2.setBrand("Brand2");
        product2.setModel("Model2");
        product2.setPrice(new BigDecimal("33.38"));
        product2.setQuantity(2);
        product2.setAspectRatio("16:9");
        product2.setRefreshRate(60);
        product2.setDescription("This is a product2");
        product2.setCreatedAt(LocalDateTime.now());
        product2.setModifiedAt(LocalDateTime.now());

        productRepository.save(product);
        productRepository.save(product2);

        mvc.perform(get("/api/v1/products/monitors")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(2));
    }

    @Test
    void shouldReturnEmptyMonitorsArray() throws Exception {

        mvc.perform(get("/api/v1/products/monitors")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(0));
    }

    @Test
    void shouldReturnAllHardDrives() throws Exception {

        HardDisc product = new HardDisc();
        product.setTitle("HDD1");
        product.setBrand("Brand");
        product.setModel("Model");
        product.setPrice(new BigDecimal("33.38"));
        product.setQuantity(2);
        product.setStorageType(StorageType.HDD);
        product.setDescription("This is a product");
        product.setCapacity(80000000);
        product.setCreatedAt(LocalDateTime.now());
        product.setModifiedAt(LocalDateTime.now());

        HardDisc product2 = new HardDisc();
        product2.setTitle("SSD2");
        product2.setBrand("Brand2");
        product2.setModel("Model2");
        product2.setPrice(new BigDecimal("33.38"));
        product2.setQuantity(22);
        product2.setCapacity(80000000);
        product2.setStorageType(StorageType.SSD);
        product2.setDescription("This is a product2");
        product2.setCreatedAt(LocalDateTime.now());
        product2.setModifiedAt(LocalDateTime.now());

        productRepository.save(product);
        productRepository.save(product2);

        mvc.perform(get("/api/v1/products/drives")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(2));
    }

    @Test
    void shouldReturnEmptyHardDrivesArray() throws Exception {

        mvc.perform(get("/api/v1/products/drives")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(0));
    }

    @Test
    void shouldReturnAllGraphicCards() throws Exception {

        GraphicCard product = new GraphicCard();
        product.setTitle("Graphic1");
        product.setBrand("Brand");
        product.setModel("Model");
        product.setPrice(new BigDecimal("33.38"));
        product.setQuantity(2);
        product.setDescription("This is a product");
        product.setVramGB(4);
        product.setCreatedAt(LocalDateTime.now());
        product.setModifiedAt(LocalDateTime.now());

        GraphicCard product2 = new GraphicCard();
        product2.setTitle("Graphic2");
        product2.setBrand("Brand2");
        product2.setModel("Model2");
        product2.setPrice(new BigDecimal("33.38"));
        product2.setQuantity(22);
        product2.setVramGB(4);
        product2.setDescription("This is a product2");
        product2.setCreatedAt(LocalDateTime.now());
        product2.setModifiedAt(LocalDateTime.now());

        productRepository.save(product);
        productRepository.save(product2);

        mvc.perform(get("/api/v1/products/graphics")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(2));
    }

    @Test
    void shouldReturnEmptyGraphicCardsArray() throws Exception {

        mvc.perform(get("/api/v1/products/graphics")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(0));
    }

    @Test
    void shouldReturnAllLaptops() throws Exception {

        Laptop product = new Laptop();

        product.setTitle("Laptop1");
        product.setBrand("Brand");
        product.setModel("Model");
        product.setPrice(new BigDecimal("33.38"));
        product.setQuantity(2);
        product.setDescription("This is a product");
        product.setCreatedAt(LocalDateTime.now());
        product.setModifiedAt(LocalDateTime.now());
        product.setProcessor("AMD FX");
        product.setHardDiscCapacity(500);

        Laptop product2 = new Laptop();
        product2.setTitle("Laptop2");
        product2.setBrand("Brand2");
        product2.setModel("Model2");
        product2.setPrice(new BigDecimal("33.38"));
        product2.setQuantity(2);
        product2.setDescription("This is a product2");
        product2.setCreatedAt(LocalDateTime.now());
        product2.setModifiedAt(LocalDateTime.now());
        product.setProcessor("Intel core i5");
        product.setHardDiscCapacity(500);


        productRepository.save(product);
        productRepository.save(product2);

        mvc.perform(get("/api/v1/products/laptops")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(2));
    }

    @Test
    void shouldReturnEmptyLaptopsArray() throws Exception {

        mvc.perform(get("/api/v1/products/laptops")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(0));
    }

    @Test
    void shouldReturnProcessorById() throws Exception {
        product1.setCores(4);
        Long id = productRepository.save(product1).getId();

        mvc.perform(get("/api/v1/products/processors/" + id)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.title").value(product1.getTitle()))
                .andExpect(jsonPath("$.cores").value(4));

    }

    @Test
    void shouldNotFindProcessorById() throws Exception {
        mvc.perform(get("/api/v1/products/processors/1")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isNotFound())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(2))
                .andExpect(jsonPath("$.details").value("Processor with id: 1 not found."));

    }

    @Test
    void shouldReturnMotherboardById() throws Exception {
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
        product.setMaxRam(64L);
        product.setMotherboardFormats(MotherboardFormat.Micro_ATX);
        product.setColors(Set.of(Color.GREEN, Color.BLACK));

        Long id = productRepository.save(product).getId();

        mvc.perform(get("/api/v1/products/motherboards/" + id)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.maxRam").value(64));
    }

    @Test
    void shouldNotFindMotherboardById() throws Exception {
        mvc.perform(get("/api/v1/products/motherboards/1")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isNotFound())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(2))
                .andExpect(jsonPath("$.details").value("Motherboard with id: 1 not found."));

    }

    @Test
    void shouldReturnCaseById() throws Exception {
        Case product = new Case();
        product.setTitle("CASE1");
        product.setBrand("Brand");
        product.setModel("Model");
        product.setPrice(new BigDecimal("33.38"));
        product.setQuantity(2);
        product.setDescription("This is a product");
        product.setCreatedAt(LocalDateTime.now());
        product.setModifiedAt(LocalDateTime.now());
        product.setMotherboardFormats(Set.of(MotherboardFormat.Micro_ATX, MotherboardFormat.ATX));
        product.setColors(Set.of(Color.GREEN, Color.BLACK));

        Long id = productRepository.save(product).getId();

        mvc.perform(get("/api/v1/products/cases/" + id)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.colors").value(Matchers.containsInAnyOrder("GREEN", "BLACK")));
    }

    @Test
    void shouldNotFindCaseById() throws Exception {
        mvc.perform(get("/api/v1/products/cases/1")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isNotFound())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(2))
                .andExpect(jsonPath("$.details").value("Case with id: 1 not found."));

    }

    @Test
    void shouldReturnRamById() throws Exception {
        Ram product = new Ram();
        product.setTitle("MEM1");
        product.setBrand("Brand");
        product.setModel("Model");
        product.setPrice(new BigDecimal("33.38"));
        product.setQuantity(2);
        product.setDescription("This is a product");
        product.setCasTiming(15);
        product.setCreatedAt(LocalDateTime.now());
        product.setModifiedAt(LocalDateTime.now());

        Long id = productRepository.save(product).getId();

        mvc.perform(get("/api/v1/products/rams/" + id)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.casTiming").value(product.getCasTiming()));
    }

    @Test
    void shouldNotFindRamById() throws Exception {
        mvc.perform(get("/api/v1/products/rams/1")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isNotFound())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(2))
                .andExpect(jsonPath("$.details").value("Ram with id: 1 not found."));

    }

    @Test
    void shouldReturnMouseById() throws Exception {
        Mouse product = new Mouse();
        product.setTitle("Mouse1");
        product.setBrand("Brand");
        product.setModel("Model");

        product.setPrice(new BigDecimal("33.38"));
        product.setQuantity(2);
        product.setDescription("This is a product");
        product.setCreatedAt(LocalDateTime.now());
        product.setConnection("Wireless");
        product.setModifiedAt(LocalDateTime.now());

        Long id = productRepository.save(product).getId();

        mvc.perform(get("/api/v1/products/mouses/" + id)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.connection").value(product.getConnection()));
    }

    @Test
    void shouldNotFindMouseById() throws Exception {
        mvc.perform(get("/api/v1/products/mouses/1")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isNotFound())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(2))
                .andExpect(jsonPath("$.details").value("Mouse with id: 1 not found."));

    }

    @Test
    void shouldReturnKeyboardById() throws Exception {
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

        mvc.perform(get("/api/v1/products/keyboards/" + id)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.connection").value(product.getConnection()));
    }

    @Test
    void shouldNotFindKeyboardById() throws Exception {
        mvc.perform(get("/api/v1/products/keyboards/1")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isNotFound())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(2))
                .andExpect(jsonPath("$.details").value("Keyboard with id: 1 not found."));

    }

    @Test
    void shouldReturnMonitorById() throws Exception {
        Monitor product = new Monitor();
        product.setTitle("Monitor1");
        product.setBrand("Brand");
        product.setModel("Model");
        product.setPrice(new BigDecimal("33.38"));
        product.setQuantity(2);
        product.setDescription("This is a product");
        product.setAspectRatio("16:9");
        product.setRefreshRate(60);
        product.setCreatedAt(LocalDateTime.now());
        product.setModifiedAt(LocalDateTime.now());

        Long id = productRepository.save(product).getId();

        mvc.perform(get("/api/v1/products/monitors/" + id)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.aspectRatio").value(product.getAspectRatio()));
    }

    @Test
    void shouldNotFindMonitorById() throws Exception {
        mvc.perform(get("/api/v1/products/monitors/1")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isNotFound())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(2))
                .andExpect(jsonPath("$.details").value("Monitor with id: 1 not found."));

    }

    @Test
    void shouldReturnHardDiscById() throws Exception {
        HardDisc product = new HardDisc();
        product.setTitle("HDD1");
        product.setBrand("Brand");
        product.setModel("Model");
        product.setPrice(new BigDecimal("33.38"));
        product.setQuantity(2);
        product.setStorageType(StorageType.HDD);
        product.setDescription("This is a product");
        product.setCapacity(1000);
        product.setCreatedAt(LocalDateTime.now());
        product.setModifiedAt(LocalDateTime.now());

        Long id = productRepository.save(product).getId();

        mvc.perform(get("/api/v1/products/hard-discs/" + id)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.capacity").value(product.getCapacity()))
                .andExpect(jsonPath("$.storageType").value("HDD"));
    }

    @Test
    void shouldNotFindHardDiscById() throws Exception {
        mvc.perform(get("/api/v1/products/hard-discs/1")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isNotFound())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(2))
                .andExpect(jsonPath("$.details").value("Hard disc with id: 1 not found."));

    }

    @Test
    void shouldReturnGraphicCardById() throws Exception {
        GraphicCard product = new GraphicCard();
        product.setTitle("Graphic1");
        product.setBrand("Brand");
        product.setModel("Model");
        product.setPrice(new BigDecimal("33.38"));
        product.setQuantity(2);
        product.setDescription("This is a product");
        product.setVramGB(4);
        product.setCreatedAt(LocalDateTime.now());
        product.setModifiedAt(LocalDateTime.now());

        Long id = productRepository.save(product).getId();

        mvc.perform(get("/api/v1/products/graphics/" + id)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.vramGB").value(product.getVramGB()));

    }

    @Test
    void shouldNotFindGraphicCardById() throws Exception {
        mvc.perform(get("/api/v1/products/graphics/1")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isNotFound())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(2))
                .andExpect(jsonPath("$.details").value("Graphic card with id: 1 not found."));

    }

    @Test
    void shouldReturnLaptopById() throws Exception {
        Laptop product = new Laptop();

        product.setTitle("Laptop1");
        product.setBrand("Brand");
        product.setModel("Model");
        product.setPrice(new BigDecimal("33.38"));
        product.setQuantity(2);
        product.setDescription("This is a product");
        product.setCreatedAt(LocalDateTime.now());
        product.setModifiedAt(LocalDateTime.now());
        product.setProcessor("AMD FX");
        product.setCpuSpeed(3.5F);
        product.setHardDiscCapacity(500);

        Long id = productRepository.save(product).getId();

        mvc.perform(get("/api/v1/products/laptops/" + id)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.processor").value(product.getProcessor()))
                .andExpect(jsonPath("$.cpuSpeed").value(product.getCpuSpeed()));

    }

    @Test
    void shouldNotFindLaptopById() throws Exception {
        mvc.perform(get("/api/v1/products/laptops/1")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isNotFound())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(2))
                .andExpect(jsonPath("$.details").value("Laptop with id: 1 not found."));

    }

    @Test
    void shouldReturnComputerById() throws Exception {
        Computer product = new Computer();
        product.setTitle("Laptop1");
        product.setBrand("Brand");
        product.setModel("Model");
        product.setPrice(new BigDecimal("33.38"));
        product.setQuantity(2);
        product.setDescription("This is a product");
        product.setCreatedAt(LocalDateTime.now());
        product.setModifiedAt(LocalDateTime.now());
        product.setProcessor("AMD FX");
        product.setGraphicCard("Nvidia RX 3070");

        Long id = productRepository.save(product).getId();

        mvc.perform(get("/api/v1/products/computers/" + id)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.processor").value(product.getProcessor()))
                .andExpect(jsonPath("$.graphicCard").value(product.getGraphicCard()));

    }

    @Test
    void shouldNotFindComputerById() throws Exception {
        mvc.perform(get("/api/v1/products/computers/1")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isNotFound())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.length()").value(2))
                .andExpect(jsonPath("$.details").value("Computer with id: 1 not found."));

    }
}
