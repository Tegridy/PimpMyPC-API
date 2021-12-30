package com.pimpmypc.api.order;

import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/v1/order")
@CrossOrigin("*")
@AllArgsConstructor
public class OrderController {

    private final OrderService orderService;

    @PostMapping("")
    public ResponseEntity<String> saveOrder(@RequestBody Order x) {

        orderService.saveOrder(x);
        return ResponseEntity.ok("Ok");
    }

    @GetMapping("/t")
    public ResponseEntity<Page<Order>> getUserOrdersDetails() {
        return ResponseEntity.ok(orderService.getUserOrdersDetails());
    }
}
