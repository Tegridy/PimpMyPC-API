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

    private final ProductService productService;
    private Cart customerCart;

    public CartServiceImpl(ProductService productService) {
        customerCart = new Cart();
        this.productService = productService;
    }

    @Override
    public BigDecimal updateCartAndGetTotalPrice(List<Long> productsIds) {
        List<Product> products = productsIds.stream().map(productService::findProductById).toList();
        customerCart.setProductsInCart(products);

        return calculateCartTotalPrice();
    }

    @Override
    public List<Product> getCustomerProductsInCart() {
        return this.customerCart.getProductsInCart();
    }

    public BigDecimal calculateCartTotalPrice() {
        return this.customerCart.getProductsInCart().stream().map(Product::getPrice)
                .reduce(new BigDecimal(0), BigDecimal::add);
    }

    @Override
    public void clearCart() {
        customerCart = new Cart();
    }
}
