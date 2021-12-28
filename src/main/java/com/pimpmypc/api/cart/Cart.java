package com.pimpmypc.api.cart;

import com.pimpmypc.api.product.Product;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
public class Cart {
    private List<Product> productsInCart;

    public Cart() {
        productsInCart = new ArrayList<>();
    }
}
