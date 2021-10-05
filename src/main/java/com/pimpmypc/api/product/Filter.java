package com.pimpmypc.api.product;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity(name = "filters")
@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
public class Filter implements Comparable<Filter> {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    @Column(name = "filter_name")
    private String name;

    @ManyToOne
    @JoinColumn(name = "filter_type_id")
    @JsonBackReference
    private FilterType filterType;


    @Column(name = "value_property")
    private String valueProperty;

    @Override
    public String toString() {
        return "Filter{" +
                "name='" + name + '\'' +
                '}';
    }

    @Override
    public int compareTo(Filter o) {
        if (this.name.compareTo(o.name) == 0) {
            return 0;
        } else if (this.name.compareTo(o.name) > 0) {
            return 1;
        } else {
            return -1;
        }
    }
}
