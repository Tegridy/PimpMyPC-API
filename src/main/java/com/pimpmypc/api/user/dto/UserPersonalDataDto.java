package com.pimpmypc.api.user.dto;

import com.pimpmypc.api.user.address.Address;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@Builder
public class UserPersonalDataDto {
    private String firstName;
    private String lastName;
    private String email;
    private String phone;
    private Address address;
}
