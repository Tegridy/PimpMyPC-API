package com.pimpmypc.api.products;

import com.pimpmypc.api.product.Product;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;

@Entity(name = "cases")
@Getter
@Setter
public class Case extends Product {

    private int height;
    private int width;
    @Enumerated(EnumType.STRING)
    @Column(name = "motherboard_format")
    private MotherboardFormat motherboardFormats;


    public void setMotherboardFormat(MotherboardFormat motherboardFormats) {
        this.motherboardFormats = motherboardFormats;
    }
}

