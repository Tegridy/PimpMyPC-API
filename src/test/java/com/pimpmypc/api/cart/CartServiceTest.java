package com.pimpmypc.api.cart;

import com.pimpmypc.api.product.Product;
import com.pimpmypc.api.product.ProductService;
import com.pimpmypc.api.products.MotherboardSocket;
import com.pimpmypc.api.products.Processor;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;


@ExtendWith(MockitoExtension.class)
public class CartServiceTest {

    @InjectMocks
    private CartServiceImpl cartService;

    @Mock
    private ProductService productService;

    private Processor product1;
    private Processor product2;

    @BeforeEach
    void setUp() {
        product1 = new Processor();
        product1.setTitle("Intel Processor");
        product1.setBrand("Intel");
        product1.setModel("i5");
        product1.setPrice(new BigDecimal("225.38"));
        product1.setQuantity(8);
        product1.setDescription("This is a processor");
        product1.setCores(4);
        product1.setBaseClock("4444444");
        product1.setBoostClock("555555");
        product1.setTdp(120);
        product1.setIntegratedGraphic("UHD630");
        product1.setMultithreading(true);
        product1.setCreatedAt(LocalDateTime.now());
        product1.setModifiedAt(LocalDateTime.now());
        product1.setMotherboardSocket(MotherboardSocket.LGA1151);

        product2 = new Processor();
        product2.setTitle("AMD Processor");
        product2.setBrand("AMD");
        product2.setModel("FX");
        product2.setPrice(new BigDecimal("325.38"));
        product2.setQuantity(12);
        product2.setDescription("This is an AMD processor");
        product2.setCores(8);
        product2.setBaseClock("3444444");
        product2.setBoostClock("5555555");
        product2.setTdp(220);
        product2.setIntegratedGraphic("Radeon");
        product2.setMultithreading(true);
        product2.setCreatedAt(LocalDateTime.now());
        product2.setModifiedAt(LocalDateTime.now());
        product2.setMotherboardSocket(MotherboardSocket.AM4);
    }

    @Test
    void shouldUpdateCartAndGetTotalPrice() {
        List<Product> productList = new ArrayList<>();
        productList.add(product1);
        productList.add(product2);

        Cart cart = new Cart();
        cart.setProductsInCart(productList);

        cartService.setCustomerCart(cart);

        BigDecimal totalPrice = product1.getPrice().add(product2.getPrice());

        Mockito.doReturn(product1).when(productService).findProductById(55L);
        Mockito.doReturn(product2).when(productService).findProductById(66L);

        assertEquals(totalPrice, cartService.updateCartAndGetTotalPrice(List.of(55L, 66L)));
    }

    @Test
    void shouldGetCustomerProductsInCart() {
        List<Product> productList = new ArrayList<>();
        productList.add(product1);
        productList.add(product2);

        Cart cart = new Cart();
        cart.setProductsInCart(productList);

        cartService.setCustomerCart(cart);

        assertEquals(productList, cartService.getCustomerProductsInCart());
    }

    @Test
    void shouldCalculateCartTotalPrice() {
        List<Product> productList = new ArrayList<>();
        productList.add(product1);
        productList.add(product2);

        Cart cart = new Cart();
        cart.setProductsInCart(productList);

        cartService.setCustomerCart(cart);

        BigDecimal totalPrice = product1.getPrice().add(product2.getPrice());

        assertEquals(totalPrice, cartService.calculateCartTotalPrice());
    }

    @Test
    void shouldClearCart() {
        List<Product> productList = new ArrayList<>();
        productList.add(product1);
        productList.add(product2);

        Cart cart = new Cart();
        cart.setProductsInCart(productList);

        cartService.setCustomerCart(cart);

        assertEquals(productList, cartService.getCustomerCart().getProductsInCart());

        cartService.clearCart();

        assertEquals(0, cartService.getCustomerCart().getProductsInCart().size());
    }

    @Test
    void shouldGetCustomerCart() {
        List<Product> productList = new ArrayList<>();
        productList.add(product1);
        productList.add(product2);

        Cart cart = new Cart();
        cart.setProductsInCart(productList);

        cartService.setCustomerCart(cart);

        assertEquals(cart, cartService.getCustomerCart());
    }
}
