package com.pimpmypc.api.products;

import com.pimpmypc.api.product.Product;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity(name = "mouses")
@Getter
@Setter
public class Mouse extends Product {
    private String style;
    @Enumerated(EnumType.STRING)
    @ElementCollection(fetch = FetchType.EAGER)
    @CollectionTable(name = "colors", joinColumns = @JoinColumn(name = "id"))
    @Column(name = "color")
    private List<Color> colors;
    private String connection;
    private String tracking;
}
