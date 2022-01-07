package com.pimpmypc.api.order;

import com.pimpmypc.api.product.SingleOrderDto;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
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

    @GetMapping("")
    public ResponseEntity<Page<OrderDto>> getUserOrdersDetails(Pageable pageable) {
        return ResponseEntity.ok(orderService.getUserOrdersDetails(pageable));
    }

    @GetMapping("/{id}")
    public ResponseEntity<SingleOrderDto> getUserOrdersProducts(@PathVariable Long id) {
        return ResponseEntity.ok(orderService.getUserOrdersProducts(id));
    }
}
