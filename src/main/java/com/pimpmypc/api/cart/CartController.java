package com.pimpmypc.api.cart;

import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.List;

@RestController
@RequestMapping("/api/v1/cart")
@CrossOrigin("*")
@AllArgsConstructor
public class CartController {

    private CartService cartService;

    @PostMapping("/x")
    ResponseEntity<BigDecimal> updateBasket(@RequestBody List<Long> productList) {
        return ResponseEntity.ok(cartService.updateBasket(productList));
    }
}
