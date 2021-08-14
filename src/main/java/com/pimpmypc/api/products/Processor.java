package com.pimpmypc.api.products;

import com.pimpmypc.api.product.Product;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity(name = "processors")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Processor extends Product {

    private int cores;
    @Column(name = "base_clock")
    private int baseClock;
    @Column(name = "boost_clock")
    private int boostClock;
    private int tdp;
    @Column(name = "integrated_graphic")
    private String integratedGraphic;
    private boolean multithreading;
}
