package com.pimpmypc.api.order;

import com.pimpmypc.api.cart.Cart;
import com.pimpmypc.api.exception.AuthenticationException;
import com.pimpmypc.api.order.dto.CustomerOrderDataDto;
import com.pimpmypc.api.order.dto.OrderDto;
import com.pimpmypc.api.order.dto.OrderResponse;
import com.pimpmypc.api.product.Product;
import com.pimpmypc.api.product.ProductRepository;
import com.pimpmypc.api.product.ProductService;
import com.pimpmypc.api.security.Role;
import com.pimpmypc.api.user.User;
import com.pimpmypc.api.user.UserRepository;
import com.pimpmypc.api.user.address.Address;
import com.pimpmypc.api.user.address.AddressRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.jupiter.api.function.Executable;
import org.mockito.*;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
public class OrderServiceTest {

    @InjectMocks
    private OrderServiceImpl orderService;
    @Mock
    private OrderRepository orderRepository;
    @Mock
    private ProductService productService;
    @Mock
    private AddressRepository addressRepository;
    @Mock
    private UserRepository userRepository;
    @Mock
    private ProductRepository productRepository;
    @Captor
    private ArgumentCaptor<Order> orderArgumentCaptor;


    private Product product1;
    private Product product2;
    private Order orderx;
    private User user;

    @BeforeEach
    void setUp() {

        product1 = new Product();
        product1.setId(1L);
        product1.setTitle("Intel Processor");
        product1.setBrand("Intel");
        product1.setModel("i5");
        product1.setPrice(new BigDecimal("225.38"));
        product1.setQuantity(8);
        product1.setDescription("This is a processor");
        product1.setCreatedAt(LocalDateTime.now());
        product1.setModifiedAt(LocalDateTime.now());

        product2 = new Product();
        product2.setId(2L);
        product2.setTitle("MOBO2");
        product2.setBrand("Brand2");
        product2.setModel("Model2");
        product2.setPrice(new BigDecimal("33.38"));
        product2.setQuantity(22);
        product2.setDescription("This is a product2");
        product2.setCreatedAt(LocalDateTime.now());
        product2.setModifiedAt(LocalDateTime.now());
        // product2.setColors(Set.of(Color.GREEN, Color.BLACK));

        List<Product> productList = new ArrayList<>();
        productList.add(product1);
        productList.add(product2);

        Address address = new Address("street1", "city1", "state1", "11-111");

        orderx = new Order("John", "Doe", OrderStatus.IN_PROGRESS, "mail@mail.com", "123456789",
                BigDecimal.valueOf(125), productList, address);
        orderx.setCreatedAt(LocalDateTime.now());
        orderx.setId(12L);

        user = new User();
        user.setId(1L);
        user.setUsername("JD12");
        user.setFirstName("John");
        user.setLastName("Doe");
        user.setPhone("111-222-333");
        user.setPassword("qwerty321321");
        user.setEmail("john@doe.com");
        user.setRoles(List.of(Role.ROLE_USER));
        user.setCreatedAt(LocalDateTime.now());
        user.setModifiedAt(LocalDateTime.now());
        user.setUserOrders(List.of(orderx));

        SecurityContextHolder.clearContext();
    }

    @Test
    void shouldSaveOrder() {

        // given
        Cart cart = new Cart();
        cart.setProducts(List.of(product1, product2));
        cart.setTotalPrice(product1.getPrice().add(product2.getPrice()));

        Address address = new Address("street1", "city1", "state1", "11-111");

        orderService.setCartProducts(List.of(product1, product2));

        CustomerOrderDataDto order = CustomerOrderDataDto.builder()
                .customerFirstName("John")
                .customerLastName("Doe")
                .customerEmail("test@test.com")
                .customerPhone("12345678")
                .deliveryAddress(address)
                .cart(cart).build();

        when(productService.findProductById(product1.getId())).thenReturn(product1);
        when(productService.findProductById(product2.getId())).thenReturn(product2);
        when(productRepository.findProductById(product1.getId())).thenReturn(Optional.of(product1));
        when(productRepository.findProductById(product2.getId())).thenReturn(Optional.of(product2));

        Authentication authentication = Mockito.mock(Authentication.class);
        SecurityContext securityContext = Mockito.mock(SecurityContext.class);
        Mockito.when(securityContext.getAuthentication()).thenReturn(authentication);
        SecurityContextHolder.setContext(securityContext);

        when(orderRepository.save(any(Order.class))).thenReturn(orderx);

        // when
        OrderResponse result = orderService.saveOrder(order);

        //then
        verify(orderRepository).save(orderArgumentCaptor.capture());
        Order orderResult = orderArgumentCaptor.getValue();

        assertThat(orderResult.getCustomerFirstName()).isEqualTo(order.getCustomerFirstName());
        assertThat(orderResult.getCustomerLastName()).isEqualTo(order.getCustomerLastName());
        assertThat(orderResult.getCustomerEmail()).isEqualTo(order.getCustomerEmail());
        assertThat(orderResult.getCustomerPhone()).isEqualTo(order.getCustomerPhone());

        assertThat(orderx.getId()).isEqualTo(result.getId());
        assertThat(orderx.getOrderStatus()).isEqualTo(result.getStatus());
    }

    @Test
    void shouldReturnUserOrders() {

        // given
        SecurityContextHolder.getContext().setAuthentication(
                new UsernamePasswordAuthenticationToken("JD12", "pass")
        );


        Pageable pageable = Pageable.ofSize(9);

        OrderResponse orderResponse = new OrderResponse(orderx.getId(), orderx.getOrderStatus(),
                orderx.getTotalPrice(), orderx.getCreatedAt().toLocalDate());

        Page<OrderResponse> page = new PageImpl<>(List.of(orderResponse));

        when(userRepository.findByUsername(any(String.class))).thenReturn(Optional.of(user));

        // when

        Page<OrderResponse> orderResponsePage = orderService.getUserOrders(pageable);


        // then

        assertEquals(page.getContent().get(0).getId(), orderResponsePage.getContent().get(0).getId());
        assertEquals(page.getContent().get(0).getStatus(), orderResponsePage.getContent().get(0).getStatus());
    }

    @Test
    void shouldReturnUserOrdersEmptyList() {
        // given

        SecurityContextHolder.getContext().setAuthentication(
                new UsernamePasswordAuthenticationToken("JD12", "pass")
        );

        user.setUserOrders(List.of());

        Pageable pageable = Pageable.ofSize(9);

        OrderResponse orderResponse = new OrderResponse(orderx.getId(), orderx.getOrderStatus(),
                orderx.getTotalPrice(), orderx.getCreatedAt().toLocalDate());

        Page<OrderResponse> page = new PageImpl<>(List.of());

        when(userRepository.findByUsername(any(String.class))).thenReturn(Optional.of(user));

        // when

        Page<OrderResponse> orderResponsePage = orderService.getUserOrders(pageable);

        // then

        assertEquals(page.getContent().size(), orderResponsePage.getContent().size());
    }

    @Test
    void shouldReturnUserOrderDetails() throws AuthenticationException {
        // given
        SecurityContextHolder.getContext().setAuthentication(
                new UsernamePasswordAuthenticationToken("JD12", "pass")
        );

        Page<OrderResponse> page = new PageImpl<>(List.of());

        when(orderRepository.findById(1L)).thenReturn(Optional.ofNullable(orderx));

        // when

        OrderDto orderDto = orderService.getUserOrderDetails(1L);

        // then

        assertEquals(orderDto.getId(), orderx.getId());
        assertEquals(orderDto.getTitle(), "Order: " + orderx.getId());
    }

    @Test
    void shouldThrowAuthenticationExceptionIfUserIsNotLoggedIn() {
        // given
        Long orderId = 99L;

        // when
        Executable executable = () -> orderService.getUserOrderDetails(orderId);

        // then

        assertThrows(AuthenticationException.class, executable);
    }

}
