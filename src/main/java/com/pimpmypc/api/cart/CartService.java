package com.pimpmypc.api.cart;

import com.pimpmypc.api.product.Product;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;

@Service
public interface CartService {

    BigDecimal updateBasket(List<Long> productsIds);

    List<Product> getCustomerProductsInCart();
}
