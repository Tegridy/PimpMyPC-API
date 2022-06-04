package com.pimpmypc.api.utils;

import com.pimpmypc.api.product.Product;
import com.pimpmypc.api.product.dto.ProductDto;

public class ProductMapper {

    public static ProductDto mapToDto(Product product) {
        return ProductDto.builder().id(product.getId()).price(product.getPrice())
                .title(product.getTitle()).imageUrl(product.getImageUrl()).build();
    }
}
