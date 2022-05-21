package com.pimpmypc.api.product;

import com.pimpmypc.api.category.CategoryRepository;
import com.pimpmypc.api.exception.EntityNotFoundException;
import com.pimpmypc.api.filters.FilterType;
import com.pimpmypc.api.filters.FiltersRepository;
import com.pimpmypc.api.product.dto.ProductDto;
import com.querydsl.core.types.Predicate;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.util.MultiValueMap;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.Set;


@Service
@AllArgsConstructor
@Slf4j
public class ProductServiceImpl implements ProductService {

    private final CategoryRepository categoryRepository;
    private final FiltersRepository filterTypeRepository;
    private final ProductRepository productRepository;
    @PersistenceContext
    private EntityManager entityManager;

    private ProductsResponse createResponse(Page<ProductDto> productsPage, String categoryName) {

        long categoryId = categoryRepository.findCategoryByTitle(categoryName)
                .orElseThrow(() -> new EntityNotFoundException("Category with given name not found")).getId();

        Set<FilterType> filters = filterTypeRepository.findFiltersCategoriesById(categoryId);

        ProductsResponse response = new ProductsResponse();
        response.setProducts(productsPage);
        response.setFilters(filters);

        return response;
    }

    private ProductDto mapToDto(Product product) {
        return ProductDto.builder().id(product.getId()).price(product.getPrice())
                .title(product.getTitle()).attributes(product.getAttributes()).imageUrl(product.getImageUrl()).build();
    }

    @Override
    public Page<ProductDto> findProductsByName(String productName, Pageable pageable) {
        List<ProductDto> productsDtos = productRepository.findProductsByName(productName, pageable)
                .stream().map(this::mapToDto).toList();
        return new PageImpl<ProductDto>(productsDtos);
    }

    @Override
    public Page<ProductDto> findProductsByNameAndCategory(String productName, String productCategory, Pageable pageable) {
        List<ProductDto> productsDtos = productRepository
                .findProductsByNameAndCategory(productName, productCategory, pageable)
                .stream().map(this::mapToDto).toList();

        return new PageImpl<>(productsDtos);
    }

    @Override
    public Page<ProductDto> getOurChoiceProducts() {
        List<ProductDto> ourChoice = productRepository.findProductsByOrderByNumberOfItemsSoldDesc(Pageable.ofSize(6)).stream().map(this::mapToDto).toList();

        return new PageImpl<>(ourChoice);
    }

    @Override
    public Page<ProductDto> getBestsellers() {
        List<ProductDto> bestsellers = productRepository.findProductsByOrderByNumberOfItemsSoldDesc(Pageable.ofSize(18)).stream().map(this::mapToDto).toList();

        return new PageImpl<>(bestsellers);
    }

    @Override
    public Page<ProductDto> getNewestProduct() {
        List<ProductDto> newestProduct = productRepository.findProductByOrderByIdDesc(Pageable.ofSize(1)).stream().map(this::mapToDto).toList();

        return new PageImpl<>(newestProduct);
    }

    @Override
    public Product findProductById(Long id) {
        return productRepository.findProductById(id)
                .orElseThrow(() -> new EntityNotFoundException("Product with id: " + id + " not found"));
    }


//
//    }

    @Override
    public ProductsResponse getAllProducts(MultiValueMap<String, String> searchParams, Predicate predicate, Pageable pageable, Long categoryId) {

        removeUnnecessarySearchParams(searchParams);

        searchParams.remove("page");
        searchParams.remove("size");
        searchParams.remove("categoryId");
        searchParams.remove("title");
        searchParams.remove("brand");
        searchParams.remove("model");

        Category category = categoryRepository.findById(categoryId)
                .orElseThrow(() -> new EntityNotFoundException("Category with id: " + categoryId + " not found."));

//        System.out.println("X");
//        System.out.println(productRepository.findProductsByCategoryId(searchParams, pageable, category).getContent().size());

        List<ProductDto> productDtos = productRepository.findProductsByCategoryId(searchParams, predicate, pageable, category)
                .getContent().stream().map(this::mapToDto).toList();


        Set<FilterType> filters = filterTypeRepository.findFiltersCategoriesById(category.getId());

        ProductsResponse productsResponse = new ProductsResponse(new PageImpl<>(productDtos), filters);

        return productsResponse;
    }

    private void removeUnnecessarySearchParams(MultiValueMap<String, String> searchParams) {
        searchParams.remove("page");
        searchParams.remove("size");
        searchParams.remove("categoryId");
        searchParams.remove("title");
        searchParams.remove("brand");
        searchParams.remove("model");
    }
}
