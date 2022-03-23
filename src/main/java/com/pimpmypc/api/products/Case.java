package com.pimpmypc.api.products;

import com.pimpmypc.api.product.Product;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Set;

@Entity(name = "cases")
@Getter
@Setter
public class Case extends Product {


    private int height;

    private int width;

    @Enumerated(EnumType.STRING)
    @ElementCollection(fetch = FetchType.EAGER)
    @CollectionTable(name = "motherboard_formats", joinColumns = @JoinColumn(name = "id"))
    @Column(name = "format")
    private Set<MotherboardFormat> motherboardFormats;

    public void setMotherboardFormats(Set<MotherboardFormat> motherboardFormats) {
        this.motherboardFormats = motherboardFormats;
    }

    public String getHeight() {
        return height + " mm";
    }

    public String getWidth() {
        return width + " mm";
    }
}

