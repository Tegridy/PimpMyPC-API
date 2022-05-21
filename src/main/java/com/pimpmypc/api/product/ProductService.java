package com.pimpmypc.api.product;

import com.pimpmypc.api.product.dto.ProductDto;
import com.querydsl.core.types.Predicate;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.util.MultiValueMap;


public interface ProductService {

    ProductsResponse getAllProducts(MultiValueMap<String, String> searchParams, Predicate predicate, Pageable pageable, Long categoryId);

    Page<ProductDto> getBestsellers();

    Page<ProductDto> getOurChoiceProducts();

    Page<ProductDto> getNewestProduct();

    Product findProductById(Long id);

    Page<ProductDto> findProductsByName(String productName, Pageable pageable);

    Page<ProductDto> findProductsByNameAndCategory(String productName, String productCategory, Pageable pageable);
}
