package com.pimpmypc.api.product.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;

@Getter
@Setter
@AllArgsConstructor
@Builder
public class ProductDto {
    private Long id;
    private String title;
    private BigDecimal price;
    private String imageUrl;
}
