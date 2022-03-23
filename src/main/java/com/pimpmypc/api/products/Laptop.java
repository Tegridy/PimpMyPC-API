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

    private float cpuSpeed;

    private int ram;

    @Column(name = "ram_type")
    private String ramType;

    @Column(name = "hard_disc_type")
    @Enumerated(EnumType.STRING)

    private StorageType hardDiscType;
    @Column(name = "hard_disc_capacity")

    private int hardDiscCapacity;
    @Enumerated(EnumType.STRING)
    @Column(name = "panel_type")

    private MonitorPanelType monitorPanelType;
    @Column(name = "screen_resolution")

    private String screenResolution;
    @Column(name = "graphic_card")

    private String graphicCard;
    @Column(name = "graphic_card_memory")

    private int graphicCardMemory;

    private Float weight;
    @Column(name = "operating_system")

    private String operatingSystem;


    public String getDisplaySize() {
        return displaySize + " inches";
    }

    public String getCpuSpeed() {
        return cpuSpeed + " GHz";
    }

    public String getRam() {
        return ram + " GB";
    }

    public String getHardDiscCapacity() {
        return hardDiscCapacity + " GB";
    }

    public String getGraphicCardMemory() {
        return graphicCardMemory + " GB";
    }

    public String getWeight() {
        return weight + " kg";
    }
}
