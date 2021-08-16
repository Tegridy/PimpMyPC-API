package com.pimpmypc.api.products;

import com.pimpmypc.api.product.Product;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity(name = "keyboards")
@Getter
@Setter
public class Keyboard extends Product {

    private String type;
    @Enumerated(EnumType.STRING)
    @ElementCollection(fetch = FetchType.EAGER)
    @CollectionTable(name = "colors", joinColumns = @JoinColumn(name = "id"))
    @Column(name = "color")
    private List<Color> colors;
    @Column(name = "connection_type")
    private String connection;
}
