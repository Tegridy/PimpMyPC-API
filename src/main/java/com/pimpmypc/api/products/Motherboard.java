package com.pimpmypc.api.products;

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

    private MotherboardSocket motherboardSocket;
    @Enumerated(EnumType.STRING)
    @Column(name = "motherboard_format")

    private MotherboardFormat motherboardFormat;
    @Column(name = "ram_slots")

    private Integer ramSlots;
    @Column(name = "max_ram")

    private Long maxRam;
    @Column(name = "memory_type")

    private String ramType;

    public String getMaxRam() {
        if (maxRam != null) {
            return maxRam + " GB";
        }
        return null;
    }
}
