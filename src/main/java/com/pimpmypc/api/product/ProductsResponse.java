package com.pimpmypc.api.product;

import com.pimpmypc.api.filters.FilterType;
import com.pimpmypc.api.product.dto.ProductDto;
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
public class ProductsResponse {

    private Page<ProductDto> products;
    private Set<FilterType> filters;
}
