package com.pimpmypc.api.order;

import com.pimpmypc.api.exception.AuthenticationException;
import com.pimpmypc.api.order.dto.CustomerOrderDataDto;
import com.pimpmypc.api.order.dto.OrderDto;
import com.pimpmypc.api.order.dto.OrderResponse;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.jupiter.api.function.Executable;
import org.mockito.*;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.Mockito.verify;

@ExtendWith(MockitoExtension.class)
public class OrderServiceTest {

    @InjectMocks
    private OrderServiceImpl orderService;
    
    @Mock
    private OrderRepository orderRepository;

    @Captor
    private ArgumentCaptor<Order> orderArgumentCaptor;


    private OrderResponse orderResponse;
    private OrderResponse orderResponse2;

    @BeforeEach
    void setUp() {
        orderResponse = new OrderResponse(12L, OrderStatus.IN_PROGRESS, BigDecimal.valueOf(550),
                LocalDate.now());

        orderResponse2 = new OrderResponse(14L, OrderStatus.COMPLETE, BigDecimal.valueOf(150),
                LocalDate.now());
    }

    @Test
    void shouldSaveOrder() {
        // given
        CustomerOrderDataDto order = CustomerOrderDataDto.builder()
                .customerFirstName("John")
                .customerLastName("Doe")
                .customerEmail("test@test.com")
                .customerPhone("12345678").build();

        // when
        OrderResponse result = orderService.saveOrder(order);

        //then
        verify(orderRepository).save(orderArgumentCaptor.capture());
        Order orderResult = orderArgumentCaptor.getValue();

        assertThat(orderResult.getCustomerFirstName()).isEqualTo(order.getCustomerFirstName());
    }

    @Test
    void shouldReturnUserOrders() {

        List<OrderResponse> orderResponseList = new ArrayList<>();
        orderResponseList.add(orderResponse);
        orderResponseList.add(orderResponse2);

        Pageable pageable = Mockito.mock(Pageable.class);

        PageImpl<OrderResponse> page = new PageImpl<OrderResponse>(orderResponseList);

        Mockito.doReturn(page).when(orderService).getUserOrders(pageable);

        assertEquals(page, orderService.getUserOrders(pageable));
    }

    @Test
    void shouldReturnUserOrdersEmptyList() {

        List<OrderResponse> orderResponseList = new ArrayList<>();

        Pageable pageable = Mockito.mock(Pageable.class);
        PageImpl<OrderResponse> page = new PageImpl<>(orderResponseList);

        Mockito.doReturn(page).when(orderService).getUserOrders(pageable);

        assertEquals(page, orderService.getUserOrders(pageable));
    }

    @Test
    void shouldReturnUserOrderDetails() throws AuthenticationException {
        OrderDto orderDto = new OrderDto(99L, "Order: 99", BigDecimal.valueOf(125), "/", null,
                null, null);

        Mockito.doReturn(orderDto).when(orderService).getUserOrderDetails(99L);

        assertEquals(orderDto, orderService.getUserOrderDetails(99L));
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
