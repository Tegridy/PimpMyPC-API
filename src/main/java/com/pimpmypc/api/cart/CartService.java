package com.pimpmypc.api.cart;

import java.math.BigDecimal;
import java.util.List;

public interface CartService {

    BigDecimal updateBasket(List<Long> productsIds);

}
