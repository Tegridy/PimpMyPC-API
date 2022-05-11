package com.pimpmypc.api.order;

import com.pimpmypc.api.cart.Cart;
import com.pimpmypc.api.exception.AuthenticationException;
import com.pimpmypc.api.exception.CartException;
import com.pimpmypc.api.exception.EntityNotFoundException;
import com.pimpmypc.api.order.dto.CustomerOrderDataDto;
import com.pimpmypc.api.order.dto.OrderDto;
import com.pimpmypc.api.order.dto.OrderResponse;
import com.pimpmypc.api.product.Product;
import com.pimpmypc.api.product.ProductRepository;
import com.pimpmypc.api.product.ProductService;
import com.pimpmypc.api.user.User;
import com.pimpmypc.api.user.UserRepository;
import com.pimpmypc.api.user.address.AddressRepository;
import com.pimpmypc.api.utils.BaseEntity;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class OrderServiceImpl implements OrderService {

    private final OrderRepository orderRepository;
    private final ProductRepository productRepository;
    private final AddressRepository addressRepository;
    private final UserRepository userRepository;
    private final ProductService productService;

    private BigDecimal cartTotalPrice;
    private List<Product> cartProducts;

    @Override
    public OrderResponse saveOrder(CustomerOrderDataDto customerData) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        if (!isCartValid(customerData.getCart())) {
            log.warn("Cart validation failed.");
            throw new CartException("Cart validation failed.", HttpStatus.NOT_ACCEPTABLE);
        }

        cartProducts.forEach(p -> {
            Product product = productRepository.findProductById(p.getId()).orElseThrow(() ->
                    new EntityNotFoundException("Product with id: " + p.getId() + " not found."));


            product.setQuantity(product.getQuantity() - 1);
            product.setNumberOfItemsSold(product.getNumberOfItemsSold() + 1);

            productRepository.save(product);
        });

        customerData.getDeliveryAddress().setCreatedAt(LocalDateTime.now());
        addressRepository.save(customerData.getDeliveryAddress());

        Order order = Order.builder().customerFirstName(customerData.getCustomerFirstName())
                .customerLastName(customerData.getCustomerLastName())
                .orderStatus(OrderStatus.IN_PROGRESS)
                .customerEmail(customerData.getCustomerEmail())
                .customerPhone(customerData.getCustomerPhone())
                .totalPrice(cartTotalPrice)
                .products(cartProducts)
                .deliveryAddress(customerData.getDeliveryAddress()).build();

        order.setCreatedAt(LocalDateTime.now());
        order.setModifiedAt(LocalDateTime.now());

        if (authentication.isAuthenticated()) {
            userRepository.findByUsername(authentication.getName()).ifPresent((user) -> {
                user.addUserOrder(order);
                order.setUser(user);
            });
        }


        Order savedOrder = orderRepository.save(order);
        log.info("Saving order: " + savedOrder.getId());


        return OrderResponse.builder().id(savedOrder.getId()).status(savedOrder.getOrderStatus()).build();
    }

    @Override
    public Page<OrderResponse> getUserOrders(Pageable pageable) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        List<OrderResponse> userOrders = new ArrayList<>();

        if (authentication != null) {
            log.info(authentication.getName() + " is logged in. Returning user orders.");
            User user = userRepository.findByUsername(authentication.getName())
                    .orElseThrow(() -> new EntityNotFoundException("User with given name not found."));


            userOrders = user.getUserOrders().stream().map(order -> OrderResponse.builder().status(order.getOrderStatus())
                    .id(order.getId()).price(order.getTotalPrice()).orderDate(order.getCreatedAt().toLocalDate())
                    .build()).toList();
        } else {
            log.warn("User is not logged in. Can't load orders.");
        }

        return new PageImpl<>(userOrders, pageable, 9);
    }

    @Override
    public OrderDto getUserOrderDetails(Long id) throws AuthenticationException {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null) {
            Order order = orderRepository.findById(id)
                    .orElseThrow(() -> new EntityNotFoundException("Order with id: " + id + " not found."));
            List<Product> orderProducts = order.getProducts();

            return OrderDto.builder().id(order.getId()).title("Order: " + order.getId())
                    .imageUrl(orderProducts.get(0).getImageUrl())
                    .products(orderProducts)
                    .address(order.getDeliveryAddress())
                    .price(orderProducts.stream().map(Product::getPrice)
                            .reduce(new BigDecimal(0), BigDecimal::add)).build();
        } else {
            log.warn("User don't have access to see this order.");
            throw new AuthenticationException("User don't have access to see this order.");
        }
    }

    private boolean isCartValid(Cart cart) {
        List<Long> productsIds = cart.getProducts().stream().map(BaseEntity::getId).toList();
        List<Product> products = productsIds.stream().map(productService::findProductById).toList();

        BigDecimal totalPrice = products.stream().map(Product::getPrice)
                .reduce(new BigDecimal(0), BigDecimal::add).setScale(2, RoundingMode.CEILING);


        if (cart.getTotalPrice().setScale(2, RoundingMode.CEILING).equals(totalPrice)) {
            this.cartTotalPrice = totalPrice;
            this.cartProducts = cart.getProducts();
            return true;
        } else {
            return false;
        }
    }
}
