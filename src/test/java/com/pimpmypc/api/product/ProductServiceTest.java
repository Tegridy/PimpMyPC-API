package com.pimpmypc.api.product;

import com.pimpmypc.api.exception.ProductException;
import com.pimpmypc.api.products.*;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.beans.factory.annotation.Autowired;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.Set;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;


@ExtendWith(MockitoExtension.class)
public class ProductServiceTest {

    @Autowired
    @InjectMocks
    private ProductServiceImpl productService;

    @Mock
    private ProductRepository<Product> productRepository;

    @Test
    void shouldReturnAllDifferentProducts() {

        HardDisc product = new HardDisc();
        product.setTitle("HDD1");
        product.setBrand("Brand");
        product.setModel("Model");
        product.setPrice(new BigDecimal("33.38"));
        product.setQuantity(2);
        product.setStorageType(StorageType.HDD);
        product.setDescription("This is a product");
        product.setCapacity(8);
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

        List<Product> productList = new ArrayList<>();
        productList.add(product);
        productList.add(product2);

        Mockito.doReturn(productList).when(productRepository).findAll();

        assertEquals(productList, productService.getAllProducts());
    }

    @Test
    void shouldReturnEmptyProductsList() {
        List<Product> productList = new ArrayList<>();

        Mockito.doReturn(productList).when(productRepository).findAll();

        assertEquals(productList, productService.getAllProducts());
    }

    @Test
    void shouldReturnProductById() {

        Case product = new Case();

        product.setId(5L);
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

        Mockito.doReturn(Optional.of(product)).when(productRepository).findById(product.getId());

        assertEquals(product, productService.getProductById(5L));
    }

    @Test
    void shouldThrowErrorWhenProductWithGivenIdIsNotFound() {

        Case product = new Case();

        product.setId(5L);
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

        Mockito.doThrow(new ProductException("Product with id " + product.getId() + " not found."))
                .when(productRepository).findById(product.getId());

        assertThrows(ProductException.class, () ->
                productService.getProductById(5L)
        );
    }

    @Test
    void shouldReturnProduct1() {

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


        Mockito.doReturn(List.of(product)).when(productRepository).findAllMonitors();

        assertEquals(List.of(product), productService.getAllMonitors());
    }

    @Test
    void shouldReturnProduct2() {
        Keyboard product = new Keyboard();
        product.setTitle("Keyboard1");
        product.setBrand("Brand");
        product.setModel("Model");
        product.setPrice(new BigDecimal("33.38"));
        product.setQuantity(2);
        product.setDescription("This is a product");
        product.setCreatedAt(LocalDateTime.now());
        product.setModifiedAt(LocalDateTime.now());

        Mockito.doReturn(List.of(product)).when(productRepository).findAllKeyboards();

        assertEquals(List.of(product), productService.getAllKeyboards());
    }

    @Test
    void shouldReturnProduct3() {

        Ram product = new Ram();
        product.setTitle("MEM1");
        product.setBrand("Brand");
        product.setModel("Model");
        product.setPrice(new BigDecimal("33.38"));
        product.setQuantity(2);
        product.setDescription("This is a product");
        product.setCreatedAt(LocalDateTime.now());
        product.setModifiedAt(LocalDateTime.now());

        Mockito.doReturn(List.of(product)).when(productRepository).findAllRamMemory();

        assertEquals(List.of(product), productService.getAllRamMemory());
    }
}
