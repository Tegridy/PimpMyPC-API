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
    private long speed;
    @Column(name = "number_of_modules")
    private int numberOfModules;
    @Column(name = "module_size")
    private long moduleSize;

    @Column(name = "first_word_latency")
    private int firstWordLatency;
    @Column(name = "cas_timing")
    private int casTiming;
}
