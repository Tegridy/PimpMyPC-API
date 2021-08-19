package com.pimpmypc.api.products;

import com.pimpmypc.api.product.Product;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity(name = "smartphones")
@Getter
@Setter
public class Smartphone extends Product {

    private int memory;
    @Column(name = "display_size")
    private float displaySize;
    private String resolution;
    private String processor;
    @Column(name = "cpu_speed")
    private float cpuSpeed;
    private int ram;
    @Column(name = "operating_system")
    private String operatingSystem;
    @Column(name = "battery_capacity")
    private int batteryCapacity;
}
