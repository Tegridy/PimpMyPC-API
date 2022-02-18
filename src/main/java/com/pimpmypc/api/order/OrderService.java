package com.pimpmypc.api.order;

import com.pimpmypc.api.product.SingleOrderDto;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface OrderService {

    OrderDto saveOrder(Order order);


    Page<OrderDto> getUserOrdersDetails(Pageable pageable);

    SingleOrderDto getUserOrdersProducts(Long id);
}
