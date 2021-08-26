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
    private float displaySize;
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
    private float weight;
    @Column(name = "operating_system")
    private String operatingSystem;
}
