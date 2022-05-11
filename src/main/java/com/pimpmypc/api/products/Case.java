package com.pimpmypc.api.products;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.pimpmypc.api.product.Product;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Set;

@Entity(name = "cases")
@Getter
@Setter
public class Case extends Product {

    @JsonProperty("Height")
    private Integer height;

    @JsonProperty("Width")
    private Integer width;

    @Enumerated(EnumType.STRING)
    @ElementCollection(fetch = FetchType.EAGER)
    @CollectionTable(name = "motherboard_formats", joinColumns = @JoinColumn(name = "id"))
    @Column(name = "format")
    @JsonProperty("Motherboard formats")
    private Set<MotherboardFormat> motherboardFormats;

    public void setMotherboardFormats(Set<MotherboardFormat> motherboardFormats) {
        this.motherboardFormats = motherboardFormats;
    }

    public String getHeight() {
        if (height != null) {
            return height + " mm";
        }
        return null;
    }

    public String getWidth() {
        if (width != null) {
            return width + " mm";
        }
        return null;
    }
}

