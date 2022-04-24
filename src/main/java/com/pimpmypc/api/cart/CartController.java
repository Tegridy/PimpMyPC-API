package com.pimpmypc.api.cart;

import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1/cart")
@AllArgsConstructor
public class CartController {

    private final CartService cartService;

    @PutMapping()
    ResponseEntity<Cart> updateCartAndGetTotalPrice(@RequestBody List<Long> productListIds) {
        return ResponseEntity.ok(cartService.updateCartAndGetTotalPrice(productListIds));
    }


}
