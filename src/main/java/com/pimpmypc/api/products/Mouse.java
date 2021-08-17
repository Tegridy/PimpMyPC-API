package com.pimpmypc.api.products;

import com.pimpmypc.api.product.Product;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;

@Entity(name = "mouses")
@Getter
@Setter
public class Mouse extends Product {
    private String style;

    private String connection;
    private String tracking;
}
