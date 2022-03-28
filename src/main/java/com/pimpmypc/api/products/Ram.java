package com.pimpmypc.api.products;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.pimpmypc.api.product.Product;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity(name = "ram_memory")
@Getter
@Setter
public class Ram extends Product {
    @Column(name = "module_type")
    @JsonProperty("Module type")
    private String moduleType;
    private Long speed;
    @Column(name = "number_of_modules")
    @JsonProperty("Number of modules")
    private Integer numberOfModules;
    @Column(name = "module_size")
    @JsonProperty("Module size")
    private Long moduleSize;
    @Column(name = "first_word_latency")
    @JsonProperty("First word latency")
    private Integer firstWordLatency;
    @Column(name = "cas_timing")
    @JsonProperty("Cas timing")
    private Integer casTiming;

    public String getSpeed() {
        if (speed != null) {
            return speed + " Hz";
        }
        return null;
    }

    public String getFirstWordLatency() {
        if (firstWordLatency != null) {
            return firstWordLatency + " ms";
        }
        return null;
    }

    public String getCasTiming() {
        if (casTiming != null) {
            return casTiming + " ms";
        }
        return null;
    }
}
