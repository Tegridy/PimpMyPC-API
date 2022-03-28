package com.pimpmypc.api.order;

import com.pimpmypc.api.exception.OrderNotFoundException;
import com.pimpmypc.api.order.dto.OrderDto;
import com.pimpmypc.api.order.dto.OrderResponse;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

@ExtendWith(MockitoExtension.class)
public class OrderServiceTest {

    @Mock
    private OrderService orderService;

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

        Order order = new Order("John", "Doe", OrderStatus.IN_PROGRESS, "mail@mail.com", "123456789",
                BigDecimal.valueOf(125), null, null);

        Mockito.doReturn(orderResponse).when(orderService).saveOrder(order);

        assertEquals(orderResponse, orderService.saveOrder(order));
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
    void shouldReturnUserOrderDetails() {
        OrderDto orderDto = new OrderDto(99L, "Order: 99", BigDecimal.valueOf(125), "/", null,
                null, null);

        Mockito.doReturn(orderDto).when(orderService).getUserOrderDetails(99L);

        assertEquals(orderDto, orderService.getUserOrderDetails(99L));
    }

    @Test
    void shouldThrowOrderNotFound() {
        OrderDto orderDto = new OrderDto(99L, "Order: 99", BigDecimal.valueOf(125), "/", null,
                null, null);

        Mockito.doThrow(OrderNotFoundException.class).when(orderService).getUserOrderDetails(99L);

        assertThrows(OrderNotFoundException.class, () -> orderService.getUserOrderDetails(99L));
    }

}
