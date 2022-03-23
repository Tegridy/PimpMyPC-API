package com.pimpmypc.api.products;

import com.pimpmypc.api.product.Product;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;

@Entity(name = "monitors")
@Getter
@Setter
public class Monitor extends Product {

    @Column(name = "screen_size")
    private float screenSize;

    private String resolution;

    @Column(name = "refresh_rate")
    private int refreshRate;

    @Column(name = "response_time")
    private int responseTime;

    @Enumerated(EnumType.STRING)
    @Column(name = "panel_type")
    private MonitorPanelType monitorPanelType;

    @Column(name = "aspect_ratio")
    private String aspectRatio;

    public String getScreenSize() {
        return screenSize + " inches";
    }

    public String getRefreshRate() {
        return refreshRate + " Hz";
    }

    public String getResponseTime() {
        return responseTime + " ms";
    }
}
