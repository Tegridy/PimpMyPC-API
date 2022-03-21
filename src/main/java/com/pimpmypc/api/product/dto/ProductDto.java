package com.pimpmypc.api.product.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;

@Getter
@Setter
@Builder
public class ProductDto {
    private Long id;
    private String title;
    private BigDecimal price;
    private String imageUrl;
}
