package com.pimpmypc.api.order;

import com.pimpmypc.api.user.Address;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@AllArgsConstructor
@Getter
@Setter
public class OrderDto {

    private String customerFirstName;
    private String customerLastName;
    private String customerEmail;
    private String customerPhone;
    private Address deliveryAddress;
}
