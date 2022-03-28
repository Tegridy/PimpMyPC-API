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

    private final CartService cartService;

    @PutMapping()
    ResponseEntity<BigDecimal> updateCartAndGetTotalPrice(@RequestBody List<Long> productListIds) {
        return ResponseEntity.ok(cartService.updateCartAndGetTotalPrice(productListIds));
    }
}
