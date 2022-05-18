package com.pimpmypc.api.product;

import com.pimpmypc.api.product.dto.ProductDto;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.Map;


public interface ProductService {

    Page<ProductDto> getAllProducts(Map<String, String> searchParams, Pageable pageable, Long categoryId);

    Page<ProductDto> getBestsellers();

    Page<ProductDto> getOurChoiceProducts();

    Page<ProductDto> getNewestProduct();

    Product findProductById(Long id);

    Page<ProductDto> findProductsByName(String productName, Pageable pageable);

    Page<ProductDto> findProductsByNameAndCategory(String productName, String productCategory, Pageable pageable);
}
