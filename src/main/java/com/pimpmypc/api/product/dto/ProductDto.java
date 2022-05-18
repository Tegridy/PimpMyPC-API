package com.pimpmypc.api.product.dto;

import com.pimpmypc.api.product.ProductAttributes;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@Builder
public class ProductDto {
    private Long id;
    private String title;
    private BigDecimal price;
    private List<ProductAttributes> attributes;
    private String imageUrl;
}
