package com.pimpmypc.api.filters;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.pimpmypc.api.product.Category;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.SortNatural;

import javax.persistence.*;
import java.util.SortedSet;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Entity(name = "filters_types")
public class FilterType {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "filter_type")
    private String name;

    @Column(name = "filter_property")
    private String filterProperty;

    @OneToMany(mappedBy = "filterType")
    @JsonManagedReference
    @OrderBy("filter_name DESC")
    @SortNatural
    private SortedSet<Filter> values;

    @ManyToOne
    @JsonIgnore
    private Category category;

    @Override
    public String toString() {
        return "FilterType{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", filters=" + values.toString() +
                '}';
    }
}
