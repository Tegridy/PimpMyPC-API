//package com.pimpmypc.api.product;
//
//import com.pimpmypc.api.category.CategoryRepository;
//import com.pimpmypc.api.products.*;
//import org.junit.jupiter.api.AfterEach;
//import org.junit.jupiter.api.BeforeEach;
//import org.junit.jupiter.api.Test;
//import org.junit.jupiter.api.extension.ExtendWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.context.SpringBootTest;
//import org.springframework.test.context.TestPropertySource;
//import org.springframework.test.context.junit.jupiter.SpringExtension;
//
//import java.math.BigDecimal;
//import java.time.LocalDateTime;
//import java.util.List;
//import java.util.Set;
//
//import static org.junit.jupiter.api.Assertions.assertEquals;
//
//@ExtendWith(SpringExtension.class)
//@SpringBootTest
//@TestPropertySource(
//        locations = "classpath:application-test.properties")
//public class ProductRepositoryTest {
//
//    @Autowired
//    CategoryRepository categoryRepository;
//    @Autowired
//    private ProductRepository<Product> productRepository;
//    private Processor product1;
//    private Motherboard product2;
//
//    @BeforeEach
//    public void setUp() {
//        product1 = new Processor();
//        product1.setId(1L);
//        product1.setTitle("Intel Processor");
//        product1.setBrand("Intel");
//        product1.setModel("i5");
//        product1.setPrice(new BigDecimal("225.38"));
//        product1.setQuantity(8);
//        product1.setDescription("This is a processor");
//        product1.setCores(4);
//        product1.setBaseClock("4444444");
//        product1.setBoostClock("555555");
//        product1.setTdp(120);
//        product1.setIntegratedGraphic("UHD630");
//        product1.setMultithreading(true);
//        product1.setCreatedAt(LocalDateTime.now());
//        product1.setModifiedAt(LocalDateTime.now());
//
//        product2 = new Motherboard();
//        product2.setMotherboardSocket(MotherboardSocket.LGA1200);
//        product2.setTitle("MOBO2");
//        product2.setBrand("Brand2");
//        product2.setModel("Model2");
//        product2.setPrice(new BigDecimal("33.38"));
//        product2.setQuantity(2);
//        product2.setDescription("This is a product2");
//        product2.setCreatedAt(LocalDateTime.now());
//        product2.setModifiedAt(LocalDateTime.now());
//        product2.setMotherboardFormats(MotherboardFormat.Micro_ATX);
//        product2.setColors(Set.of(Color.GREEN, Color.BLACK));
//    }
//
//    @AfterEach
//    void tearDown() {
//        // productRepository.deleteAll();
//        product1 = null;
//    }
//
//    @Test
//    void shouldSaveAllProducts() {
//        productRepository.saveAll(List.of(product1, product2));
//
//        assertEquals(2, productRepository.findAll().size());
//    }
//
//    @Test
//    void shouldReturnSingleProduct() {
//        Product savedProduct = productRepository.save(product1);
//
//        assertEquals(1, productRepository.findAll().size());
//        assertEquals(product1.getTitle(), savedProduct.getTitle());
//    }
//
//    @Test
//    void shouldReturnEmptyList() {
//        assertEquals(0, productRepository.findAll().size());
//    }
//
//    @Test
//    void shouldReturnListOfMotherboards() {
//        Motherboard product = new Motherboard();
//        product.setMotherboardSocket(MotherboardSocket.LGA1200);
//        product.setTitle("MOBO1");
//        product.setBrand("Brand");
//        product.setModel("Model");
//        product.setPrice(new BigDecimal("33.38"));
//        product.setQuantity(2);
//        product.setDescription("This is a product");
//        product.setCreatedAt(LocalDateTime.now());
//        product.setModifiedAt(LocalDateTime.now());
//        product.setMotherboardFormats(MotherboardFormat.Micro_ATX);
//        product.setColors(Set.of(Color.GREEN, Color.BLACK));
//
//        Motherboard product2 = new Motherboard();
//        product2.setMotherboardSocket(MotherboardSocket.LGA1200);
//        product2.setTitle("MOBO2");
//        product2.setBrand("Brand2");
//        product2.setModel("Model2");
//        product2.setPrice(new BigDecimal("33.38"));
//        product2.setQuantity(2);
//        product2.setDescription("This is a product2");
//        product2.setCreatedAt(LocalDateTime.now());
//        product2.setModifiedAt(LocalDateTime.now());
//        product2.setMotherboardFormats(MotherboardFormat.Micro_ATX);
//        product2.setColors(Set.of(Color.GREEN, Color.BLACK));
//
//        List<Motherboard> motherboards = List.of(product, product2);
//        List<Motherboard> fetchedMotherboards = productRepository.saveAll(List.of(product, product2));
//
//        assertEquals(motherboards, fetchedMotherboards);
//    }
//}
