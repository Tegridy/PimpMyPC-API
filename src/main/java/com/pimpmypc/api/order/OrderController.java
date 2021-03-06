package com.pimpmypc.api.order;

import com.pimpmypc.api.exception.AuthenticationException;
import com.pimpmypc.api.order.dto.CustomerOrderDataDto;
import com.pimpmypc.api.order.dto.OrderDto;
import com.pimpmypc.api.order.dto.OrderResponse;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
@RequestMapping("/api/v1/orders")
@AllArgsConstructor
public class OrderController {

    private final OrderService orderService;

    @PostMapping("")
    public ResponseEntity<OrderResponse> saveOrder(@Valid @RequestBody CustomerOrderDataDto order) {
        OrderResponse orderResponse = orderService.saveOrder(order);
        return ResponseEntity.ok(orderResponse);
    }

    @GetMapping
    public ResponseEntity<Page<OrderResponse>> getUserOrders(@RequestParam Long userId, Pageable pageable) {
        return ResponseEntity.ok(orderService.getUserOrders(userId, pageable));
    }

    @GetMapping("/{id}")
    public ResponseEntity<OrderDto> getUserOrderDetails(@PathVariable Long id) throws AuthenticationException {
        return ResponseEntity.ok(orderService.getUserOrderDetails(id));
    }
}
