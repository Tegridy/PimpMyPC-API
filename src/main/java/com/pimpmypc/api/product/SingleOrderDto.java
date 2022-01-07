package com.pimpmypc.api.product;

import com.pimpmypc.api.products.Color;
import com.pimpmypc.api.user.Address;
import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;
import java.util.List;
import java.util.Set;

@Data
@Builder
public class SingleOrderDto {
    private Long id;
    private String title;
    private BigDecimal price;
    private String imageUrl;
    private Set<Color> colors;
    private Address address;
    private List<Product> products;
}
