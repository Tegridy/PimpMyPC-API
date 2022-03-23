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

    private Integer memory;

    @Column(name = "display_size")
    private String displaySize;

    private String resolution;

    private String processor;

    @Column(name = "cpu_speed")
    private String cpuSpeed;

    private Integer ram;

    @Column(name = "operating_system")
    private String operatingSystem;

    @Column(name = "battery_capacity")
    private Integer batteryCapacity;

    public String getMemory() {
        return memory + " GB";
    }

    public String getDisplaySize() {
        if (displaySize != null) {
            return displaySize + " inches";
        }
        return null;
    }

    public String getRam() {
        if (ram != null) {
            return ram + " GB";
        }
        return null;
    }

    public String getBatteryCapacity() {
        if (batteryCapacity != null) {
            return batteryCapacity + " mAh";
        }
        return null;
    }
}
