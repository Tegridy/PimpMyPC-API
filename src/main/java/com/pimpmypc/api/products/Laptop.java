package com.pimpmypc.api.products;

import com.pimpmypc.api.product.Product;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;

@Getter
@Setter
@Entity(name = "laptops")
public class Laptop extends Product {

    private String processor;
    private int ram;
    @Column(name = "hard_drive")
    private String hardDrive;
    @Enumerated(EnumType.STRING)
    @Column(name = "panel_type")
    private MonitorPanelType monitorPanelType;
    @Column(name = "screen_resolution")
    private String screenResolution;
    @Column(name = "graphic_card")
    private String graphicCard;
    private float weight;
    @Column(name = "operating_system")
    private String operatingSystem;
}
