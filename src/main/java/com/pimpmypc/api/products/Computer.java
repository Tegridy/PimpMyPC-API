package com.pimpmypc.api.products;

import com.pimpmypc.api.product.Product;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity(name = "computers")
@Setter
@Getter
public class Computer extends Product {

    private String processor;
    private String ram;
    private String motherboard;
    @Column(name = "hard_disc")
    private String hardDisc;
    @Column(name = "power_supply")
    private String powerSupply;
    @Column(name = "computer_case")
    private String computerCase;
    @Column(name = "graphic_card")
    private String graphicCard;
}
