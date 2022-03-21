package com.pimpmypc.api.products.dto;

import com.pimpmypc.api.product.Category;
import com.pimpmypc.api.products.Color;
import lombok.Getter;
import lombok.experimental.SuperBuilder;

import java.math.BigDecimal;
import java.util.List;
import java.util.Set;

@Getter
@SuperBuilder
public abstract class BaseDto {

    private final long id;
    private final String title;
    private final String description;
    private final BigDecimal price;
    private final String brand;
    private final String model;
    private final String imageUrl;
    private final Set<Color> colors;
    private final List<Category> categories;
}
