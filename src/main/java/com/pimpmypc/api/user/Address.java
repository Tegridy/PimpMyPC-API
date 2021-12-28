package com.pimpmypc.api.user;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.pimpmypc.api.order.Order;
import com.pimpmypc.api.utils.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.Hibernate;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

@Entity(name = "addresses")
@Getter
@Setter
public class Address extends BaseEntity {

    @Column(unique = true)
    private String street;
    private String city;
    private String state;
    private String zip;

    @OneToOne(mappedBy = "address", cascade = CascadeType.ALL)
    @JsonIgnore
    private User user;

    @OneToMany(mappedBy = "deliveryAddress")
    @JsonIgnore
    private Set<Order> order = new HashSet<>();

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        Address address = (Address) o;
        return getId() != null && Objects.equals(getId(), address.getId());
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}
