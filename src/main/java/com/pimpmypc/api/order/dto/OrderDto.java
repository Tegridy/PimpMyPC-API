package com.pimpmypc.api.order.dto;

import com.pimpmypc.api.product.Color;
import com.pimpmypc.api.product.dto.ProductDto;
import com.pimpmypc.api.user.address.Address;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;
import java.util.List;
import java.util.Set;

@Data
@Builder
@AllArgsConstructor
public class OrderDto {

    private Long id;
    private String title;
    private BigDecimal price;
    private String imageUrl;
    private Set<Color> colors;
    private Address address;
    private List<ProductDto> products;
}
