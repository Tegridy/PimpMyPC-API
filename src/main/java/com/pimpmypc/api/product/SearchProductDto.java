package com.pimpmypc.api.product;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SearchProductDto {
    Long id;
    String title;
    String imageUrl;
    BigDecimal price;
}
