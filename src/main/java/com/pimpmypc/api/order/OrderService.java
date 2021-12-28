package com.pimpmypc.api.order;

public interface OrderService {

    void saveOrder(Order order);

    Order getOrderStatus();

    void changeOrderStatus(OrderStatus status);

    Order getOrderDetails(Long id);
}
