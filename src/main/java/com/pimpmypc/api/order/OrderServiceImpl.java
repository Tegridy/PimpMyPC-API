package com.pimpmypc.api.order;

import com.pimpmypc.api.cart.CartService;
import com.pimpmypc.api.product.ProductService;
import com.pimpmypc.api.user.AddressRepository;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

@Service
@AllArgsConstructor
@Slf4j
public class OrderServiceImpl implements OrderService {

    private final CartService cartService;
    private final OrderRepository orderRepository;
    private final AddressRepository addressRepository;
    private final ProductService productService;


    @Override
    public void saveOrder(Order order) {
        addressRepository.findByStreet(order.getDeliveryAddress().getStreet()).ifPresent(order::setDeliveryAddress);

        order.getDeliveryAddress().setCreatedAt(LocalDateTime.now());
        order.setOrderStatus(OrderStatus.IN_PROGRESS);
        order.setCreatedAt(LocalDateTime.now());
        order.setModifiedAt(LocalDateTime.now());
        order.setProducts(cartService.getCustomerProductsInCart());

        log.info("Saving order");
        orderRepository.save(order);
    }

    @Override
    public Order getOrderStatus() {
        return null;
    }

    @Override
    public void changeOrderStatus(OrderStatus status) {

    }

    @Override
    public Order getOrderDetails(Long id) {
        return null;
    }
}
