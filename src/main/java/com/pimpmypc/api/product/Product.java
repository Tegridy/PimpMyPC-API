package com.pimpmypc.api.product;

import com.pimpmypc.api.utils.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Set;

@Entity(name = "products")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Inheritance(strategy = InheritanceType.JOINED)
public class Product extends BaseEntity {

    private String title;
    @Column(columnDefinition = "TEXT")
    private String description;
    private BigDecimal price;
    private int quantity;
    private String brand;
    private String model;

    @ManyToMany
    @JoinTable(name = "product_category", joinColumns = @JoinColumn(name = "product_id"), inverseJoinColumns = @JoinColumn(name = "category_id"))
    private Set<Category> categories;

    @Override
    public String toString() {
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
