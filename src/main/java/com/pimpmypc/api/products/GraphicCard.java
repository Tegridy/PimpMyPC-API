package com.pimpmypc.api.products;

import com.pimpmypc.api.product.Product;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity(name = "graphic_cards")
@Getter
@Setter
public class GraphicCard extends Product {
    private String chipset;
    private String vram;
    @Column(name = "core_clock")
    private String coreClock;
    @Column(name = "boost_clock")
    private String boostClock;

    @Column(name = "graphic_card_length")
    private int length;
}
