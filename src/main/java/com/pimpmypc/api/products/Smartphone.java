package com.pimpmypc.api.products;

import com.fasterxml.jackson.annotation.JsonProperty;
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
    @JsonProperty("Screen size")
    private String displaySize;
    private String resolution;
    private String processor;
    @Column(name = "cpu_speed")
    @JsonProperty("Processor speed")
    private String cpuSpeed;
    private Integer ram;
    @Column(name = "operating_system")
    @JsonProperty("Operating system")
    private String operatingSystem;
    @Column(name = "battery_capacity")
    @JsonProperty("Battery capacity")
    private Integer batteryCapacity;

    public String getMemory() {
        if (memory != null) {
            return memory + " GB";
        }
        return null;
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
