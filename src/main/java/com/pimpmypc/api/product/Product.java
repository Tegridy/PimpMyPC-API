package com.pimpmypc.api.product;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.pimpmypc.api.order.Order;
import com.pimpmypc.api.products.Color;
import com.pimpmypc.api.utils.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

@Entity(name = "products")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Inheritance(strategy = InheritanceType.JOINED)
@JsonIgnoreProperties(value = {"quantity", "numberOfItemsSold", "categories", "createdAt", "modifiedAt"})
public class Product extends BaseEntity {

    private String title;
    @Column(columnDefinition = "TEXT")
    private String description;
    private BigDecimal price;
    private int quantity;
    private String brand;
    private String model;
    @Column(name = "image_url")
    private String imageUrl;
    @Column(name = "number_of_sold")
    private int numberOfItemsSold;
    @Enumerated(EnumType.STRING)
    @ElementCollection(fetch = FetchType.EAGER)
    @CollectionTable(name = "colors", joinColumns = @JoinColumn(name = "id"))
    @Column(name = "color")
    private Set<Color> colors = new HashSet<>();

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "product_category", joinColumns = @JoinColumn(name = "product_id"), inverseJoinColumns = @JoinColumn(name = "category_id"))
    private Set<Category> categories = new HashSet<>();

    @ManyToMany(mappedBy = "products")
    private Set<Order> orders;

    @Override
    public String toString() {
        String res = "";

        categories.forEach(System.out::println);


        return "Product{" +
                "title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", price=" + price +
                ", quantity=" + quantity +
                ", brand='" + brand + '\'' +
                ", model='" + model + '\'' +
                "super:  " + super.toString() +
                '}';
    }
}
