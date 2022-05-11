package com.pimpmypc.api.order.dto;

import com.pimpmypc.api.cart.Cart;
import com.pimpmypc.api.user.address.Address;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.validation.constraints.Email;
import javax.validation.constraints.Size;

@Getter
@Setter
@ToString
@Builder
public class CustomerOrderDataDto {
    @Size(min = 3, max = 55)
    private String customerFirstName;

    @Size(min = 3, max = 55)
    private String customerLastName;

    @Size(min = 9, max = 12)
    private String customerPhone;

    @Email
    private String customerEmail;

    private Address deliveryAddress;

    private Cart cart;
}
