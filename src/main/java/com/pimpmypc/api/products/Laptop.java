package com.pimpmypc.api.products;

import com.pimpmypc.api.product.Product;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;

@Getter
@Setter
@Entity(name = "laptops")
@ToString
public class Laptop extends Product {

    @Column(name = "display_size")

    private String displaySize;
    private String processor;
    @Column(name = "cpu_speed")

    private Float cpuSpeed;

    private Integer ram;
    @Column(name = "ram_type")

    private String ramType;
    @Column(name = "hard_disc_type")
    @Enumerated(EnumType.STRING)

    private StorageType hardDiscType;
    @Column(name = "hard_disc_capacity")

    private Integer hardDiscCapacity;
    @Enumerated(EnumType.STRING)
    @Column(name = "panel_type")

    private MonitorPanelType monitorPanelType;
    @Column(name = "screen_resolution")

    private String screenResolution;
    @Column(name = "graphic_card")

    private String graphicCard;
    @Column(name = "graphic_card_memory")

    private Integer graphicCardMemory;
    private Float weight;
    @Column(name = "operating_system")

    private String operatingSystem;


    public String getDisplaySize() {
        if (displaySize != null) {
            return displaySize + " inches";
        }
        return null;
    }

    public String getCpuSpeed() {
        if (cpuSpeed != null) {
            return cpuSpeed + " GHz";
        }
        return null;
    }

    public String getRam() {
        if (ram != null) {
            return ram + " GB";
        }
        return null;
    }

    public String getHardDiscCapacity() {
        if (hardDiscCapacity != null) {
            return hardDiscCapacity + " GB";
        }
        return null;
    }

    public String getGraphicCardMemory() {
        if (graphicCardMemory != null) {
            return graphicCardMemory + " GB";
        }

        return null;
    }

    public String getWeight() {
        if (weight != null) {
            return weight + " kg";
        }
        return null;
    }
}
