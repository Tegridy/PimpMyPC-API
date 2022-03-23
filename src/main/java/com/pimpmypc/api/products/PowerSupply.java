package com.pimpmypc.api.products;

import com.pimpmypc.api.product.Product;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity(name = "power_supplies")
@Getter
@Setter
public class PowerSupply extends Product {

    @Column(name = "adapter_power")
    private int adapterPower;

    private String standard;

    private String certificate;

    public String getAdapterPower() {
        return adapterPower + " W";
    }
}
