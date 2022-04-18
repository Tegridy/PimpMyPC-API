package com.pimpmypc.api.cart;

import com.pimpmypc.api.product.Product;
import com.pimpmypc.api.product.ProductService;
import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;

@Service
@Getter
@Setter
public class CartServiceImpl implements CartService {

    private final ProductService productService;
    private Cart customerCart;

    public CartServiceImpl(ProductService productService) {
        customerCart = new Cart();
        this.productService = productService;
    }

    @Override
    public Cart updateCartAndGetTotalPrice(List<Long> productsIds) {
        List<Product> products = productsIds.stream().map(productService::findProductById).toList();
        customerCart.setProducts(products);

        customerCart.setTotalPrice(calculateCartTotalPrice());

        return customerCart;
    }

    @Override
    public List<Product> getCustomerProductsInCart() {
        return this.customerCart.getProducts();
    }

    public BigDecimal calculateCartTotalPrice() {
        return this.customerCart.getProducts().stream().map(Product::getPrice)
                .reduce(new BigDecimal(0), BigDecimal::add);
    }

    @Override
    public void clearCart() {
        customerCart = new Cart();
    }
}
