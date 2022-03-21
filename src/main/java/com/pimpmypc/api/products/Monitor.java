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

    private Float screenSize;
    private String resolution;
    @Column(name = "refresh_rate")

    private Integer refreshRate;
    @Column(name = "response_time")

    private Integer responseTime;
    @Enumerated(EnumType.STRING)
    @Column(name = "panel_type")

    private MonitorPanelType monitorPanelType;
    @Column(name = "aspect_ratio")

    private String aspectRatio;

    public String getScreenSize() {
        if (screenSize != null) {
            return screenSize + " inches";
        }
        return null;
    }

    public String getRefreshRate() {
        if (refreshRate != null) {
            return refreshRate + " Hz";
        }
        return null;
    }

    public String getResponseTime() {
        if (responseTime != null) {
            return responseTime + " ms";
        }
        return null;
    }
}
