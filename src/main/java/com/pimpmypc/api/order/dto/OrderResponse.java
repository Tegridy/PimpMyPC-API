package com.pimpmypc.api.order.dto;

import com.pimpmypc.api.order.OrderStatus;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDate;

@ToString
@AllArgsConstructor
@Getter
@Setter
@Builder
public class OrderResponse {

    private Long id;
    private OrderStatus status;
    private BigDecimal price;
    private LocalDate orderDate;
}
