package com.pimpmypc.api.products;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.pimpmypc.api.product.Product;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;

@Entity(name = "motherboards")
@Setter
@Getter
@ToString
public class Motherboard extends Product {

    @Enumerated(EnumType.STRING)
    @Column(name = "motherboard_socket")
    @JsonProperty("Motherboard socket")
    private MotherboardSocket motherboardSocket;
    @Enumerated(EnumType.STRING)
    @Column(name = "motherboard_format")
    @JsonProperty("Motherboard format")
    private MotherboardFormat motherboardFormats;
    @Column(name = "ram_slots")
    @JsonProperty("Ram slots")
    private Integer ramSlots;
    @Column(name = "max_ram")
    @JsonProperty("Max RAM")
    private Long maxRam;
    @Column(name = "memory_type")
    @JsonProperty("Ram memory type")
    private String ramType;

    public String getMaxRam() {
        if (maxRam != null) {
            return maxRam + " GB";
        }
        return null;
    }
}
