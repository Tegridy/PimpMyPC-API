package com.pimpmypc.api.order;

import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDate;

@ToString
@AllArgsConstructor
@Getter
@Setter
@Builder
public class OrderDto {

    private Long id;
    private OrderStatus orderStatus;
    private BigDecimal price;
    private LocalDate orderDate;
}
