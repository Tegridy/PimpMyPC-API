package com.pimpmypc.api.products;

import com.fasterxml.jackson.annotation.JsonProperty;
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
    @JsonProperty("Screen size")
    private Float screenSize;
    private String resolution;
    @Column(name = "refresh_rate")
    @JsonProperty("Refresh rate")
    private Integer refreshRate;
    @Column(name = "response_time")
    @JsonProperty("Response time")
    private Integer responseTime;
    @Enumerated(EnumType.STRING)
    @Column(name = "panel_type")
    @JsonProperty("Screen type")
    private MonitorPanelType monitorPanelType;
    @Column(name = "aspect_ratio")
    @JsonProperty("Aspect ratio")
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
