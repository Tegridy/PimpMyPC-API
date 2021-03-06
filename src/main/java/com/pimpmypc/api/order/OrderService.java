package com.pimpmypc.api.order;

import com.pimpmypc.api.exception.AuthenticationException;
import com.pimpmypc.api.order.dto.CustomerOrderDataDto;
import com.pimpmypc.api.order.dto.OrderDto;
import com.pimpmypc.api.order.dto.OrderResponse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface OrderService {

    OrderResponse saveOrder(CustomerOrderDataDto customerData);

    Page<OrderResponse> getUserOrders(Long id, Pageable pageable);

    OrderDto getUserOrderDetails(Long id) throws AuthenticationException;
}
