package com.pimpmypc.api.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.math.BigInteger;

@Setter
@Getter
@AllArgsConstructor
public class LaptopDto {
    Long id;
    private String title;
    private String imgPath;
    private BigInteger price;
}
