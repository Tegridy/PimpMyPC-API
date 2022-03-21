package com.pimpmypc.api.product;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.data.domain.Page;

import java.util.Set;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class ProductsDto2<ProductDto> {

    private Page<ProductDto> products;
    private Set<FilterType> filters;
}

