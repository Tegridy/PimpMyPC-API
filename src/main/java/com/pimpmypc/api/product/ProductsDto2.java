package com.pimpmypc.api.product;

import com.pimpmypc.api.products.dto.BaseDto;
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
public class ProductsDto2<T extends BaseDto> {

    private Page<T> products;
    private Set<FilterType> filters;
}

