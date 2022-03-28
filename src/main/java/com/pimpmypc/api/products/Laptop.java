package com.pimpmypc.api.products;

import com.fasterxml.jackson.annotation.JsonProperty;
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
    @JsonProperty("Display size")
    private String displaySize;
    private String processor;
    @Column(name = "cpu_speed")
    @JsonProperty("Cpu speed")
    private Float cpuSpeed;
    @JsonProperty("RAM")
    private Integer ram;
    @Column(name = "ram_type")
    @JsonProperty("RAM type")
    private String ramType;
    @Column(name = "hard_disc_type")
    @Enumerated(EnumType.STRING)
    @JsonProperty("Hard disc type")
    private StorageType hardDiscType;
    @Column(name = "hard_disc_capacity")
    @JsonProperty("Hard disc capacity")
    private Integer hardDiscCapacity;
    @Enumerated(EnumType.STRING)
    @Column(name = "panel_type")
    @JsonProperty("Screen type")
    private MonitorPanelType monitorPanelType;
    @Column(name = "screen_resolution")
    @JsonProperty("Screen resolution")
    private String screenResolution;
    @Column(name = "graphic_card")
    @JsonProperty("Graphic card")
    private String graphicCard;
    @Column(name = "graphic_card_memory")
    @JsonProperty("Graphic card memory")
    private Integer graphicCardMemory;
    private Float weight;
    @Column(name = "operating_system")
    @JsonProperty("Operating system")
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
