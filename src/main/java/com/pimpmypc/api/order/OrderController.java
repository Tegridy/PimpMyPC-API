package com.pimpmypc.api.order;

import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/v1/order")
@CrossOrigin("*")
@AllArgsConstructor
public class OrderController {

    private final OrderService orderService;

    @PostMapping("")
    public ResponseEntity<String> getCustomerOrder(@RequestBody Order x) {

        orderService.saveOrder(x);
        return ResponseEntity.ok("Ok");
    }
}
