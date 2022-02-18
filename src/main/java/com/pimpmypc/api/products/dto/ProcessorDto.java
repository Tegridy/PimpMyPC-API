package com.pimpmypc.api.products.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.pimpmypc.api.products.MotherboardSocket;
import lombok.Getter;
import lombok.experimental.SuperBuilder;

@Getter
@SuperBuilder
public class ProcessorDto extends BaseDto {

    private final String cores;
    @JsonProperty("Base Clock")
    private final String baseClock;
    @JsonProperty("Boost Clock")
    private final String boostClock;
    @JsonProperty("Motherboard Socket")
    private final MotherboardSocket motherboardSocket;
    @JsonProperty("TDP")
    private final String tdp;
    @JsonProperty("Integrated graphic")
    private final String integratedGraphic;
    @JsonProperty("Multithreading")
    private final String multithreading;
}
