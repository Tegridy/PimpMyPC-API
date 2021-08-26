package com.pimpmypc.api.product;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Getter;

import javax.persistence.*;
import java.util.Set;

@Entity(name = "categories")
@Getter
@JsonIgnoreProperties(value = {"products"})
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "parent_id")
    private Long parentId;

    private String title;

    @ManyToMany(mappedBy = "categories")
    private Set<Product> products;

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", parentId=" + parentId +
                ", title='" + title + '\'' +
                '}';
    }
}

