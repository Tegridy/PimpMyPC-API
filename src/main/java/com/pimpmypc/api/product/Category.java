package com.pimpmypc.api.product;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.pimpmypc.api.filters.FilterType;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Objects;
import java.util.Set;

@Entity(name = "categories")
@Getter
@Setter
@JsonIgnoreProperties(value = {"products"})
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "parent_id")
    private Long parentId;

    private String title;

    @Column(name = "icon_name")
    private String iconName;

    @ManyToMany(mappedBy = "categories")
    private Set<Product> products;

    @OneToMany(mappedBy = "category")
    @JsonIgnore
    private Set<FilterType> filterTypes;

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", parentId=" + parentId +
                ", title='" + title + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Category category)) return false;

        if (!id.equals(category.id)) return false;
        if (!Objects.equals(parentId, category.parentId)) return false;
        if (!title.equals(category.title)) return false;
        return Objects.equals(iconName, category.iconName);
    }

    @Override
    public int hashCode() {
        int result = id.hashCode();
        result = 31 * result + (parentId != null ? parentId.hashCode() : 0);
        result = 31 * result + title.hashCode();
        result = 31 * result + (iconName != null ? iconName.hashCode() : 0);
        return result;
    }
}

