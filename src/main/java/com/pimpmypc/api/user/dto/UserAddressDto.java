package com.pimpmypc.api.user.dto;

import lombok.*;

@AllArgsConstructor
@ToString
@EqualsAndHashCode
@Getter
@Builder
public class UserAddressDto {
    private String street;
    private String city;
    private String state;
    private String zip;
}