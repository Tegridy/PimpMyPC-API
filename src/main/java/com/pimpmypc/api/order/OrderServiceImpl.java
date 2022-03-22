package com.pimpmypc.api.order;

import com.pimpmypc.api.auth.AuthService;
import com.pimpmypc.api.cart.CartService;
import com.pimpmypc.api.exception.OrderNotFoundException;
import com.pimpmypc.api.exception.UserNotFoundException;
import com.pimpmypc.api.order.dto.OrderDto;
import com.pimpmypc.api.order.dto.OrderResponse;
import com.pimpmypc.api.product.Product;
import com.pimpmypc.api.user.User;
import com.pimpmypc.api.user.UserRepository;
import com.pimpmypc.api.user.address.AddressRepository;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

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
    public OrderResponse saveOrder(Order order) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        // TODO: Change product quantity after order is complete
        // addressRepository.findByStreet(order.getDeliveryAddress().getStreet()).ifPresent(order::setDeliveryAddress);

        order.getDeliveryAddress().setCreatedAt(LocalDateTime.now());
        order.setOrderStatus(OrderStatus.IN_PROGRESS);
        order.setCreatedAt(LocalDateTime.now());
        order.setModifiedAt(LocalDateTime.now());
        order.setProducts(cartService.getCustomerProductsInCart());
        order.setTotalPrice(cartService.calculateCartTotalPrice());


        if (authentication.isAuthenticated()) {
            userRepository.findByUsername(authentication.getName()).ifPresent((user) -> {
                user.addUserOrder(order);
                order.setUser(user);
            });
        }


        log.info("Saving order: " + order.getId());
        Order savedOrder = orderRepository.save(order);
        cartService.clearCart();

        return OrderResponse.builder().id(savedOrder.getId()).status(savedOrder.getOrderStatus()).build();
    }

    @Override
    public Page<OrderResponse> getUserOrders(Pageable pageable) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        List<OrderResponse> userOrders = new ArrayList<>();

        if (authentication != null) {
            log.info(authentication.getName() + " is logged in. Returning user orders.");
            User user = userRepository.findByUsername(authentication.getName())
                    .orElseThrow(() -> new UserNotFoundException("User with given name not found."));


            userOrders = user.getUserOrders().stream().map(order -> OrderResponse.builder().status(order.getOrderStatus())
                    .id(order.getId()).price(order.getTotalPrice()).orderDate(order.getCreatedAt().toLocalDate())
                    .build()).toList();
        }

        return new PageImpl<OrderResponse>(userOrders, pageable, 9);
    }

    @Override
    public OrderDto getUserOrderDetails(Long id) {
        Order order = orderRepository.findById(id)
                .orElseThrow(() -> new OrderNotFoundException("Order with id: " + id + " not found."));
        List<Product> orderProducts = order.getProducts();

        return OrderDto.builder().id(order.getId()).title("Order: " + order.getId())
                .imageUrl(orderProducts.get(0).getImageUrl()).products(orderProducts).address(order.getDeliveryAddress())
                .price(orderProducts.stream().map(Product::getPrice).reduce(new BigDecimal(0), BigDecimal::add))
                .build();
    }
}
