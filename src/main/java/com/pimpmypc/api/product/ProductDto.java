package com.pimpmypc.api.product;

import com.pimpmypc.api.products.Color;
import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Set;

@Data
@Builder
public class ProductDto {
    private Long id;
    private String title;
    private String description;
    private BigDecimal price;
    private String brand;
    private String model;
    private String imageUrl;
    private Set<Color> colors;
}
