package com.pimpmypc.api.products.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.pimpmypc.api.products.MotherboardFormat;
import com.pimpmypc.api.products.MotherboardSocket;


public class MotherboardDto extends BaseDto {

    @JsonProperty("Motherboard socket")
    private MotherboardSocket motherboardSocket;
    @JsonProperty("Motherboard format")
    private MotherboardFormat motherboardFormats;
    @JsonProperty("Ram slots")
    private Integer ramSlots;
    @JsonProperty("Max RAM")
    private Long maxRam;
    @JsonProperty("Ram memory type")
    private String ramType;

    protected MotherboardDto(BaseDtoBuilder<?, ?> b) {
        super(b);
    }

    public String getMaxRam() {
        if (maxRam != null) {
            return maxRam + " GB";
        }
        return null;
    }
}
