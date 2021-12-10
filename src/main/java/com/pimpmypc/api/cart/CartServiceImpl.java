package com.pimpmypc.api.cart;

import com.pimpmypc.api.product.Product;
import com.pimpmypc.api.product.ProductService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;

@AllArgsConstructor
@Service
public class CartServiceImpl implements CartService {

    List<Product> userCart;
    private ProductService productService;

    @Override
    public BigDecimal updateBasket(List<Long> productsIds) {
        List<Product> products = productsIds.stream().map(id -> productService.findProductById(id)).toList();
        return calculateCartTotalPrice(products);
    }

    private BigDecimal calculateCartTotalPrice(List<Product> userCartItems) {
        return userCartItems.stream().map(Product::getPrice).reduce(new BigDecimal(0), BigDecimal::add);
    }
}
