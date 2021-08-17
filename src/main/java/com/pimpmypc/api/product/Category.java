package com.pimpmypc.api.product;

import javax.persistence.*;
import java.util.Set;

@Entity(name = "categories")
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "parent_id")
    private Long parentId;

    private String title;

    @ManyToMany(mappedBy = "categories")
    private Set<Product> products;
}

