package com.pimpmypc.api.cart;

import com.pimpmypc.api.product.Product;
import com.pimpmypc.api.product.ProductService;
import lombok.Getter;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;


@Service
@Getter
public class CartServiceImpl implements CartService {

    private final Cart customerCart;
    private final ProductService productService;

    public CartServiceImpl(ProductService productService) {
        customerCart = new Cart();
        this.productService = productService;
    }

    @Override
    public BigDecimal updateBasket(List<Long> productsIds) {
        List<Product> products = productsIds.stream().map(productService::findProductById).toList();
        customerCart.setProductsInCart(products);
        return calculateCartTotalPrice(products);
    }

    @Override
    public List<Product> getCustomerProductsInCart() {
        return this.customerCart.getProductsInCart();
    }

    private BigDecimal calculateCartTotalPrice(List<Product> userCartItems) {
        return userCartItems.stream().map(Product::getPrice).reduce(new BigDecimal(0), BigDecimal::add);
    }
}
