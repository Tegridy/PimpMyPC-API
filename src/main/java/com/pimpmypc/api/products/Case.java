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
    @Column(name = "motherboard_format")
    private MotherboardFormat motherboardFormats;
    @Enumerated(EnumType.STRING)
    @ElementCollection(fetch = FetchType.EAGER)
    @CollectionTable(name = "colors", joinColumns = @JoinColumn(name = "id"))
    @Column(name = "color")
    private Set<Color> colors;

    public void setMotherboardFormat(MotherboardFormat motherboardFormats) {
        this.motherboardFormats = motherboardFormats;
    }
}

