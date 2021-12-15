package com.pimpmypc.api.dto;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@AllArgsConstructor
@ToString
@EqualsAndHashCode
public class AddressDto {
    private String street;
    private String city;
    private String state;
    private String zip;
}
