package com.pimpmypc.api.products;

import com.pimpmypc.api.product.Product;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;

@Entity(name = "hard_discs")
@Getter
@Setter
public class HardDrive extends Product {
    private Integer capacity;
    @Enumerated(EnumType.STRING)
    private StorageType storageType;

    @Column(name = "platter_rpm")
    private Integer platterRpm;
    @Column(name = "interface")

    private String driveInterface;
}
