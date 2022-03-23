package com.pimpmypc.api.products;

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
    private String moduleType;

    private Long speed;

    @Column(name = "number_of_modules")
    private Integer numberOfModules;

    @Column(name = "module_size")
    private Long moduleSize;

    @Column(name = "first_word_latency")
    private Integer firstWordLatency;

    @Column(name = "cas_timing")
    private Integer casTiming;

    public String getSpeed() {
        return speed + " Hz";
    }

    public String getFirstWordLatency() {
        return firstWordLatency + " ms";
    }

    public String getCasTiming() {
        return casTiming + " ms";
    }
}
