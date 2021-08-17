package com.pimpmypc.api.products;

import com.pimpmypc.api.product.Product;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity(name = "keyboards")
@Getter
@Setter
public class Keyboard extends Product {

    private String type;

    @Column(name = "connection_type")
    private String connection;
}
