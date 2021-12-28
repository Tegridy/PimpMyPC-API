package com.pimpmypc.api.user.dto;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.ToString;

@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Getter
public class UserAddressDto {
    private String street;
    private String city;
    private String state;
    private String zip;
}