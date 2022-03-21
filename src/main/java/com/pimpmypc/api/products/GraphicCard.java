package com.pimpmypc.api.products;

import com.pimpmypc.api.product.Product;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity(name = "graphic_cards")
@Getter
@Setter
public class GraphicCard extends Product {


    private String chipset;
    @Column(name = "v_ram")

    private Integer vRam;
    @Column(name = "core_clock")

    private Integer coreClock;
    @Column(name = "boost_clock")

    private Integer boostClock;
    @Column(name = "graphic_card_length")

    private Integer length;

    private Integer tdp;

    public String getvRam() {
        if (vRam != null) {
            return vRam + " GB";
        }
        return null;
    }

    public String getCoreClock() {
        if (coreClock != null) {
            return coreClock + " GHz";
        }
        return null;
    }

    public String getBoostClock() {
        if (boostClock != null) {
            return boostClock + " GHz";
        }
        return null;
    }

    public String getLength() {
        if (length != null) {
            return length + " mm";
        }
        return null;
    }

    public String getTdp() {
        if (tdp != null) {
            return tdp + " W";
        }
        return null;
    }
}
