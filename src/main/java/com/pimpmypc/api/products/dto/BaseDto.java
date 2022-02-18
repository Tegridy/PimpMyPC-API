package com.pimpmypc.api.products.dto;

import com.pimpmypc.api.products.Color;
import lombok.Getter;
import lombok.experimental.SuperBuilder;

import java.math.BigDecimal;
import java.util.Set;

@Getter
@SuperBuilder
public abstract class BaseDto {

    private long id;
    private String title;
    private String description;
    private BigDecimal price;
    private String brand;
    private String model;
    private String imageUrl;
    private Set<Color> colors;
}
