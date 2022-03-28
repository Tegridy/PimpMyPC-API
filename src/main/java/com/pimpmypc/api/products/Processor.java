package com.pimpmypc.api.products;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.pimpmypc.api.product.Product;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;

@Entity(name = "processors")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Processor extends Product {

    private Integer cores;
    @Column(name = "base_clock")
    @JsonProperty("Base Clock")
    private String baseClock;
    @Column(name = "boost_clock")
    @JsonProperty("Boost Clock")
    private String boostClock;
    @Enumerated(EnumType.STRING)
    @Column(name = "motherboard_socket")
    @JsonProperty("Motherboard Socket")
    private MotherboardSocket motherboardSocket;
    @JsonProperty("TDP")
    private Integer tdp;
    @Column(name = "integrated_graphic")
    @JsonProperty("Integrated Graphic")
    private String integratedGraphic;
    private boolean multithreading;

    public String getTdp() {
        if (tdp != null) {
            return tdp + " W";
        }
        return null;
    }
}
