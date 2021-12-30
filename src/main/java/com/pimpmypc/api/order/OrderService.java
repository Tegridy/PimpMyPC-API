package com.pimpmypc.api.order;

import org.springframework.data.domain.Page;

public interface OrderService {

    void saveOrder(Order order);

    Order getOrderStatus();

    void changeOrderStatus(OrderStatus status);

    Page<Order> getUserOrdersDetails();
}
