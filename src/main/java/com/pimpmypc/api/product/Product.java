package com.pimpmypc.api.product;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.pimpmypc.api.category.Category;
import com.pimpmypc.api.order.Order;
import com.pimpmypc.api.utils.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;
import org.hibernate.annotations.SortNatural;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Set;
import java.util.SortedSet;

@Entity(name = "products")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@SuperBuilder
@JsonIgnoreProperties(value = {"numberOfItemsSold", "createdAt", "modifiedAt", "orders", "quantity"})
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
    @ElementCollection(fetch = FetchType.LAZY)
    @CollectionTable(name = "colors", joinColumns = @JoinColumn(name = "id"))
    @Column(name = "color")
    private Set<Color> colors;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "product_category", joinColumns = @JoinColumn(name = "product_id"),
            inverseJoinColumns = @JoinColumn(name = "category_id"))
    private Set<Category> categories;

    @ManyToMany(mappedBy = "products", fetch = FetchType.LAZY)
    private Set<Order> orders;

    @OneToMany(mappedBy = "product", cascade = {CascadeType.PERSIST, CascadeType.MERGE}, fetch = FetchType.LAZY)
    @SortNatural
    private SortedSet<ProductAttributes> attributes;


    @Override
    public String toString() {
        return "Product{" +
                "title='" + title + '\'' +
                '}';
    }
}
