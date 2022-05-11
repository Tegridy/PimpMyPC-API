package com.pimpmypc.api.cart;

import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.junit.jupiter.MockitoExtension;


@ExtendWith(MockitoExtension.class)
public class CartServiceTest {

////    @InjectMocks
////    private CartServiceImpl cartService;
//
//    @Mock
//    private ProductService productService;
//
//    private Processor product1;
//    private Processor product2;
//
//    @BeforeEach
//    void setUp() {
//        product1 = new Processor();
//        product1.setId(12L);
//        product1.setTitle("Intel Processor");
//        product1.setBrand("Intel");
//        product1.setModel("i5");
//        product1.setPrice(new BigDecimal("225.38"));
//        product1.setQuantity(8);
//        product1.setDescription("This is a processor");
//        product1.setCores(4);
//        product1.setBaseClock("4444444");
//        product1.setBoostClock("555555");
//        product1.setTdp(120);
//        product1.setIntegratedGraphic("UHD630");
//        product1.setMultithreading(true);
//        product1.setCreatedAt(LocalDateTime.now());
//        product1.setModifiedAt(LocalDateTime.now());
//        product1.setMotherboardSocket(MotherboardSocket.LGA1151);
//
//        product2 = new Processor();
//        product2.setId(24L);
//        product2.setTitle("AMD Processor");
//        product2.setBrand("AMD");
//        product2.setModel("FX");
//        product2.setPrice(new BigDecimal("325.38"));
//        product2.setQuantity(12);
//        product2.setDescription("This is an AMD processor");
//        product2.setCores(8);
//        product2.setBaseClock("3444444");
//        product2.setBoostClock("5555555");
//        product2.setTdp(220);
//        product2.setIntegratedGraphic("Radeon");
//        product2.setMultithreading(true);
//        product2.setCreatedAt(LocalDateTime.now());
//        product2.setModifiedAt(LocalDateTime.now());
//        product2.setMotherboardSocket(MotherboardSocket.AM4);
//    }
//
//    @Test
//    void shouldUpdateCartAndGetTotalPrice() {
//        List<Product> productList = new ArrayList<>();
//        productList.add(product1);
//        productList.add(product2);
//
//        List<Long> productListIds = List.of(product1.getId(), product2.getId());
//
//        BigDecimal totalPrice = product1.getPrice().add(product2.getPrice());
//
//        Cart cart = new Cart();
//        cart.setProducts(productList);
//        cart.setTotalPrice(totalPrice);
//
//        cartService.setCustomerCart(cart);
//
//        Mockito.doReturn(product1).when(productService).findProductById(12L);
//        Mockito.doReturn(product2).when(productService).findProductById(24L);
//
//        assertEquals(cartService.updateCartAndGetTotalPrice(productListIds).getTotalPrice(), totalPrice);
//    }
//
//    @Test
//    void shouldGetCustomerProductsInCart() {
//        List<Product> productList = new ArrayList<>();
//        productList.add(product1);
//        productList.add(product2);
//
//        Cart cart = new Cart();
//        cart.setProducts(productList);
//
//        cartService.setCustomerCart(cart);
//
//        assertEquals(productList, cartService.getCustomerProductsInCart());
//    }
//
//    @Test
//    void shouldCalculateCartTotalPrice() {
//        List<Product> productList = new ArrayList<>();
//        productList.add(product1);
//        productList.add(product2);
//
//        Cart cart = new Cart();
//        cart.setProducts(productList);
//
//        cartService.setCustomerCart(cart);
//
//        BigDecimal totalPrice = product1.getPrice().add(product2.getPrice());
//
//        assertEquals(totalPrice, cartService.calculateCartTotalPrice());
//    }
//
//    @Test
//    void shouldClearCart() {
//        List<Product> productList = new ArrayList<>();
//        productList.add(product1);
//        productList.add(product2);
//
//        Cart cart = new Cart();
//        cart.setProducts(productList);
//
//        cartService.setCustomerCart(cart);
//
//        assertEquals(productList, cartService.getCustomerCart().getProducts());
//
//        cartService.clearCart();
//
//        assertEquals(0, cartService.getCustomerCart().getProducts().size());
//    }
//
//    @Test
//    void shouldGetCustomerCart() {
//        List<Product> productList = new ArrayList<>();
//        productList.add(product1);
//        productList.add(product2);
//
//        Cart cart = new Cart();
//        cart.setProducts(productList);
//
//        cartService.setCustomerCart(cart);
//
//        assertEquals(cart, cartService.getCustomerCart());
//    }
}
