package com.pimpmypc.api.products;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.pimpmypc.api.product.Product;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity(name = "computers")
@Setter
@Getter
public class Computer extends Product {

    @JsonProperty("Processor")
    private String processor;
    @JsonProperty("RAM")
    private String ram;
    @JsonProperty("Motherboard")
    private String motherboard;
    @Column(name = "hard_disc")
    @JsonProperty("Hard drive")
    private String hardDisc;
    @Column(name = "power_supply")
    @JsonProperty("Power supply")
    private String powerSupply;
    @Column(name = "computer_case")
    @JsonProperty("Case")
    private String computerCase;
    @Column(name = "graphic_card")
    @JsonProperty("Graphic card")
    private String graphicCard;
}
