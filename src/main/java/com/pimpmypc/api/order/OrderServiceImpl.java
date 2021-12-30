package com.pimpmypc.api.order;

import com.pimpmypc.api.auth.AuthService;
import com.pimpmypc.api.cart.CartService;
import com.pimpmypc.api.exception.UserNotFoundException;
import com.pimpmypc.api.user.AddressRepository;
import com.pimpmypc.api.user.User;
import com.pimpmypc.api.user.UserRepository;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

@Service
@AllArgsConstructor
@Slf4j
public class OrderServiceImpl implements OrderService {

    private final CartService cartService;
    private final OrderRepository orderRepository;
    private final AddressRepository addressRepository;
    private final UserRepository userRepository;
    private final AuthService authService;


    @Override
    public void saveOrder(Order order) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();


        addressRepository.findByStreet(order.getDeliveryAddress().getStreet()).ifPresent(order::setDeliveryAddress);

        order.getDeliveryAddress().setCreatedAt(LocalDateTime.now());
        order.setOrderStatus(OrderStatus.IN_PROGRESS);
        order.setCreatedAt(LocalDateTime.now());
        order.setModifiedAt(LocalDateTime.now());
        order.setProducts(cartService.getCustomerProductsInCart());


        if (authentication.isAuthenticated()) {
            User user = userRepository.findByUsername(authentication.getName()).orElseThrow(() ->
                    new UserNotFoundException("User with given username not found")
            );

            user.addUserOrder(order);
            order.setUser(user);
        }


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
    public Page<Order> getUserOrdersDetails() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        if (authentication != null) {
            //log user name
            log.info(authentication.getName());
        }


        return null;
    }
}
