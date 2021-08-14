package com.pimpmypc.api.product;

import com.pimpmypc.api.utils.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import java.math.BigDecimal;

@Entity(name = "products")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Inheritance(strategy = InheritanceType.JOINED)
// @DiscriminatorColumn(name = "PRODUCT_TYPE", discriminatorType = DiscriminatorType.STRING)
public class Product extends BaseEntity {

    private String title;
    @Column(columnDefinition = "TEXT")
    private String description;
    private String type;
    private BigDecimal price;
    private int quantity;
    private String brand;
    private String model;

//    @ManyToMany
//    @JoinTable(name = "product_category", joinColumns = @JoinColumn(name = "product_id"), inverseJoinColumns = @JoinColumn(name = "category_id"))
//    private Set<Category> categories;


    @Override
    public String toString() {
        return "Product{" +
                "title='" + title + '\'' +
                super.getId() +
                '}';
    }
}
