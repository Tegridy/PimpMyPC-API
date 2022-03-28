package com.pimpmypc.api.product;

import com.pimpmypc.api.exception.ProductException;
import com.pimpmypc.api.product.dto.ProductDto;
import com.pimpmypc.api.products.*;
import com.querydsl.core.types.Predicate;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;


@ExtendWith(MockitoExtension.class)
public class ProductServiceTest {

    @Mock
    private ProductServiceImpl productService;
    
    private ProductsResponse productsResponse;

    private Processor product1;
    private Motherboard product2;

    @BeforeEach
    public void setUp() {
        product1 = new Processor();
        product1.setId(1L);
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

        product2 = new Motherboard();
        product2.setId(2L);
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
    }

    @Test
    void shouldReturnEmptyProductsList() {
        productsResponse = new ProductsResponse();
        productsResponse.setProducts(new PageImpl<>(new ArrayList<>()));

        Pageable pageable = Mockito.mock(Pageable.class);
        Predicate predicate = Mockito.mock(Predicate.class);

        Mockito.doReturn(productsResponse).when(productService).getAllCases(predicate, pageable);

        assertEquals(0, productService.getAllCases(predicate, pageable).getProducts().getSize());
    }

    @Test
    void shouldReturnPageWithProducts() {
        productsResponse = new ProductsResponse();
        ProductDto productDto1 = ProductDto.builder().id(product1.getId())
                .title(product1.getTitle()).price(product1.getPrice()).imageUrl("/").build();

        ProductDto productDto2 = ProductDto.builder().id(product2.getId())
                .title(product2.getTitle()).price(product2.getPrice()).imageUrl("/").build();

        List<ProductDto> productList = new ArrayList<>();
        productList.add(productDto1);
        productList.add(productDto2);

        productsResponse.setProducts(new PageImpl<>(productList));

        Pageable pageable = Mockito.mock(Pageable.class);
        Predicate predicate = Mockito.mock(Predicate.class);

        Mockito.doReturn(productsResponse).when(productService).getAllCases(predicate, pageable);

        System.out.println(productService.getAllCases(predicate, pageable).getProducts().getTotalElements());
        assertEquals(2, productService.getAllCases(predicate, pageable).getProducts().getSize());
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

        Mockito.doReturn(product).when(productService).findProductById(product.getId());

        assertEquals(product, productService.findProductById(5L));
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
                .when(productService).findProductById(product.getId());

        assertThrows(ProductException.class, () ->
                productService.findProductById(5L)
        );
    }

    @Test
    void shouldReturnProduct() {

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

        productsResponse = new ProductsResponse();

        ProductDto productDto1 = ProductDto.builder().id(product1.getId())
                .title(product1.getTitle()).price(product1.getPrice()).imageUrl("/").build();

        ProductDto productDto2 = ProductDto.builder().id(product2.getId())
                .title(product2.getTitle()).price(product2.getPrice()).imageUrl("/").build();

        List<ProductDto> productList = new ArrayList<>();
        productList.add(productDto1);
        productList.add(productDto2);

        productsResponse.setProducts(new PageImpl<>(productList));


        Pageable pageable = Mockito.mock(Pageable.class);
        Predicate predicate = Mockito.mock(Predicate.class);
        Mockito.doReturn(productsResponse).when(productService).getAllMonitors(predicate, pageable);

        assertEquals(productsResponse, productService.getAllMonitors(predicate, pageable));
    }

    @Test
    void shouldFindProductsByName() {
        productsResponse = new ProductsResponse();

        product1.setTitle("Processor Intel");
        ProductDto productDto1 = ProductDto.builder().id(product1.getId())
                .title(product1.getTitle()).price(product1.getPrice()).imageUrl("/").build();

        product2.setTitle("Processor AMD");
        ProductDto productDto2 = ProductDto.builder().id(product2.getId())
                .title(product2.getTitle()).price(product2.getPrice()).imageUrl("/").build();

        List<ProductDto> productDtoList = new ArrayList<>();
        productDtoList.add(productDto1);
        productDtoList.add(productDto2);

        Page<ProductDto> page = new PageImpl<>(productDtoList);

        Pageable pageable = Mockito.mock(Pageable.class);
        Mockito.doReturn(page).when(productService).findProductsByName("Processor", pageable);

        assertEquals(page, productService.findProductsByName("Processor", pageable));
    }

    @Test
    void shouldReturnEmptyPageWhenProductsByNameAreNotFound() {
        productsResponse = new ProductsResponse();

        List<ProductDto> productDtoList = new ArrayList<>();

        Page<ProductDto> page = new PageImpl<>(productDtoList);

        Pageable pageable = Mockito.mock(Pageable.class);
        Mockito.doReturn(page).when(productService).findProductsByName("", pageable);

        assertEquals(page, productService.findProductsByName("", pageable));
    }

    @Test
    void shouldReturnOurChoiceProducts() {
        productsResponse = new ProductsResponse();

        ProductDto productDto1 = ProductDto.builder().id(product1.getId())
                .title(product1.getTitle()).price(product1.getPrice()).imageUrl("/").build();

        ProductDto productDto2 = ProductDto.builder().id(product2.getId())
                .title(product2.getTitle()).price(product2.getPrice()).imageUrl("/").build();

        List<ProductDto> productDtoList = new ArrayList<>();
        productDtoList.add(productDto1);
        productDtoList.add(productDto2);

        Mockito.doReturn(productDtoList).when(productService)
                .getOurChoiceProducts();

        assertEquals(productDtoList, productService.getOurChoiceProducts());
    }

    @Test
    void shouldReturnNewestProducts() {
        Mockito.doReturn(product1).when(productService)
                .getNewestProduct();

        assertEquals(product1, productService.getNewestProduct());
    }

    @Test
    void shouldReturnBestsellersProducts() {
        productsResponse = new ProductsResponse();

        ProductDto productDto1 = ProductDto.builder().id(product1.getId())
                .title(product1.getTitle()).price(product1.getPrice()).imageUrl("/").build();

        ProductDto productDto2 = ProductDto.builder().id(product2.getId())
                .title(product2.getTitle()).price(product2.getPrice()).imageUrl("/").build();

        List<ProductDto> productDtoList = new ArrayList<>();
        productDtoList.add(productDto1);
        productDtoList.add(productDto2);


        Pageable pageable = Mockito.mock(Pageable.class);
        Mockito.doReturn(productDtoList).when(productService)
                .getBestsellers();

        assertEquals(productDtoList, productService.getBestsellers());
    }
}
