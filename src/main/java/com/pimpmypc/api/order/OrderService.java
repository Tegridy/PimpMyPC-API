package com.pimpmypc.api.order;

import com.pimpmypc.api.product.SingleOrderDto;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface OrderService {

    void saveOrder(Order order);

    Order getOrderStatus();

    void changeOrderStatus(OrderStatus status);

    Page<OrderDto> getUserOrdersDetails(Pageable pageable);

    SingleOrderDto getUserOrdersProducts(Long id);
}
