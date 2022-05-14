package com.pimpmypc.api.product;

import com.pimpmypc.api.category.CategoryRepository;
import com.pimpmypc.api.exception.EntityNotFoundException;
import com.pimpmypc.api.filters.FilterType;
import com.pimpmypc.api.filters.FiltersRepository;
import com.pimpmypc.api.product.dto.ProductDto;
import com.pimpmypc.api.products.*;
import com.querydsl.core.types.Predicate;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.jupiter.api.function.Executable;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;

import static org.assertj.core.api.AssertionsForInterfaceTypes.assertThat;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.Mockito.when;


@ExtendWith(MockitoExtension.class)
public class ProductServiceTest {

    @InjectMocks
    private ProductServiceImpl productService;
    @Mock
    private CaseRepository caseRepository;
    @Mock
    private CategoryRepository categoryRepository;
    @Mock
    private FiltersRepository filtersRepository;
    @Mock
    private ProductRepository productRepository;

    private ProductsResponse productsResponse;

    private Processor product1;
    private Motherboard product2;
    private Case product3;
    private Case product4;

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

        product3 = new Case();
        product3.setTitle("CASE1");
        product3.setBrand("Brand");
        product3.setModel("Model");
        product3.setPrice(new BigDecimal("33.38"));
        product3.setQuantity(2);
        product3.setDescription("This is a product3");
        product3.setCreatedAt(LocalDateTime.now());
        product3.setModifiedAt(LocalDateTime.now());
        product3.setMotherboardFormats(Set.of(MotherboardFormat.Micro_ATX));
        product3.setColors(Set.of(Color.GREEN, Color.BLACK));

        product4 = new Case();
        product4.setTitle("CASE2");
        product4.setBrand("Brand2");
        product4.setModel("Model2");
        product4.setPrice(new BigDecimal("33.38"));
        product4.setQuantity(2);
        product4.setDescription("This is a product4");
        product4.setCreatedAt(LocalDateTime.now());
        product4.setModifiedAt(LocalDateTime.now());
        product4.setMotherboardFormats(Set.of(MotherboardFormat.Micro_ATX));
        product4.setColors(Set.of(Color.GREEN, Color.BLACK));
    }

    @Test
    void shouldReturnResponseWithProducts() {

        // given
        Pageable pageable = Pageable.ofSize(9);
        Predicate predicate = Mockito.mock(Predicate.class);

        ProductDto productDto = new ProductDto(12L, "Product 1", BigDecimal.valueOf(291), "/");
        ProductDto productDto2 = new ProductDto(22L, "Product 1", BigDecimal.valueOf(291), "/");

        productsResponse = new ProductsResponse();

        Page<ProductDto> page = new PageImpl<>(List.of(productDto, productDto2));
        productsResponse.setProducts(page);

        Page<Case> casePage = new PageImpl<>(List.of(product3, product4));

        Category category = Category.builder().id(55L).title("Case").filterTypes(Set.of()).iconName("").parentId(34L)
                .products(Set.of()).build();

        when(caseRepository.findAllCases(predicate, pageable)).thenReturn(casePage);
        when(categoryRepository.findCategoryByTitle("Cases")).thenReturn(Optional.of(category));
        Set<FilterType> set = new HashSet<>();
        when(filtersRepository.findFiltersCategoriesById(category.getId())).thenReturn(set);

        // when

        ProductsResponse productsResponseResult = productService.getAllCases(predicate, pageable);

        // then

        assertThat(page.getContent().size()).isEqualTo(productsResponseResult.getProducts().getContent().size());
    }

    @Test
    void shouldReturnResponseWithoutProducts() {

        // given
        Pageable pageable = Pageable.ofSize(9);
        Predicate predicate = Mockito.mock(Predicate.class);

        productsResponse = new ProductsResponse();

        Page<ProductDto> page = new PageImpl<>(List.of());
        productsResponse.setProducts(page);

        Page<Case> casePage = new PageImpl<>(List.of());

        Category category = Category.builder().id(55L).title("Case").filterTypes(Set.of()).iconName("").parentId(34L)
                .products(Set.of()).build();

        when(caseRepository.findAllCases(predicate, pageable)).thenReturn(casePage);
        when(categoryRepository.findCategoryByTitle("Cases")).thenReturn(Optional.of(category));
        Set<FilterType> set = new HashSet<>();
        when(filtersRepository.findFiltersCategoriesById(category.getId())).thenReturn(set);

        // when

        ProductsResponse productsResponseResult = productService.getAllCases(predicate, pageable);

        // then

        assertThat(page.getContent().size()).isEqualTo(productsResponseResult.getProducts().getContent().size());
    }

    @Test
    void shouldReturnProductById() {

        //given
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

        when(productRepository.findProductById(5L)).thenReturn(Optional.of(product));

        // when

        Product result = productService.findProductById(5L);

        // then

        assertThat(product.getTitle()).isEqualTo(result.getTitle());
    }

    @Test
    void shouldThrowErrorWhenProductWithGivenIdIsNotFound() {

        //given
        Long productId = 192L;
        when(productRepository.findProductById(productId)).thenReturn(Optional.empty());

        // when
        Executable executable = () -> productService.findProductById(productId);

        // then

        assertThrows(EntityNotFoundException.class, executable);
    }

    @Test
    void shouldReturnProduct() {

        //given
        when(productRepository.findProductById(product1.getId())).thenReturn(Optional.of(product1));

        // when
        Product result = productService.findProductById(product1.getId());

        // then

        assertThat(product1.getId()).isEqualTo(result.getId());
        assertThat(product1.getTitle()).isEqualTo(result.getTitle());
    }

    @Test
    void shouldFindProductsByName() {

        //given
        product1.setTitle("Processor Intel");
        product2.setTitle("Processor AMD");

        Pageable pageable = Mockito.mock(Pageable.class);

        Page<Product> page = new PageImpl<>(List.of(product1, product2));

        when(productRepository.findProductsByName("Processor", pageable)).thenReturn(page);

        // when
        Page<ProductDto> result = productService.findProductsByName("Processor", pageable);

        // then

        assertThat(page.getContent().size()).isEqualTo(result.getContent().size());
    }

    @Test
    void shouldReturnEmptyPageWhenProductsByNameAreNotFound() {

        //given
        Pageable pageable = Mockito.mock(Pageable.class);

        Page<Product> page = new PageImpl<>(List.of());

        when(productRepository.findProductsByName("Processor", pageable)).thenReturn(page);

        // when
        Page<ProductDto> result = productService.findProductsByName("Processor", pageable);

        // then

        assertThat(page.getContent().size()).isEqualTo(result.getContent().size());
    }

    @Test
    void shouldReturnOurChoiceProducts() {

        // given
        Pageable pageable = Pageable.ofSize(6);

        Page<Product> page = new PageImpl<>(List.of(product1, product2, product3));

        when(productRepository.findProductsByOrderByNumberOfItemsSoldDesc(pageable)).thenReturn(page);

        // when

        Page<ProductDto> productsResponseResult = productService.getOurChoiceProducts();

        // then

        assertThat(page.getContent().size()).isEqualTo(productsResponseResult.getContent().size());
    }

    @Test
    void shouldReturnNewestProducts() {
        // given
        Pageable pageable = Pageable.ofSize(1);

        Page<Product> page = new PageImpl<>(List.of(product1));

        when(productRepository.findProductByOrderByIdDesc(pageable)).thenReturn(page);

        // when

        Page<ProductDto> productsResponseResult = productService.getNewestProduct();

        // then

        assertThat(page.getContent().size()).isEqualTo(productsResponseResult.getContent().size());
    }

    @Test
    void shouldReturnBestsellersProducts() {
        // given
        Pageable pageable = Pageable.ofSize(18);

        Page<Product> page = new PageImpl<>(List.of(product1, product2, product3));

        when(productRepository.findProductsByOrderByNumberOfItemsSoldDesc(pageable)).thenReturn(page);

        // when

        Page<ProductDto> productsResponseResult = productService.getBestsellers();

        // then

        assertThat(page.getContent().size()).isEqualTo(productsResponseResult.getContent().size());
    }
}
