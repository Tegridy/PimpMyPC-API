package com.pimpmypc.api.products;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.pimpmypc.api.product.Product;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity(name = "graphic_cards")
@Getter
@Setter
public class GraphicCard extends Product {

    @JsonProperty("Chipset")
    private String chipset;

    @Column(name = "v_ram")
    @JsonProperty("VRAM")
    private Integer vRam;

    @Column(name = "core_clock")
    @JsonProperty("Core clock")
    private Integer coreClock;

    @Column(name = "boost_clock")
    @JsonProperty("Boost clock")
    private Integer boostClock;

    @Column(name = "graphic_card_length")
    @JsonProperty("Length")
    private Integer length;

    @JsonProperty("TDP")
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
