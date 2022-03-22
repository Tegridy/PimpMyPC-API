package com.pimpmypc.api.order;

import com.pimpmypc.api.order.dto.OrderDto;
import com.pimpmypc.api.order.dto.OrderResponse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface OrderService {

    OrderResponse saveOrder(Order order);

    Page<OrderResponse> getUserOrders(Pageable pageable);

    OrderDto getUserOrderDetails(Long id);
}
