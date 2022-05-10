package com.pimpmypc.api.user.address;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.pimpmypc.api.order.Order;
import com.pimpmypc.api.user.User;
import com.pimpmypc.api.utils.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.Hibernate;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

@Entity(name = "addresses")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Address extends BaseEntity {

    @NotEmpty(message = "Street is required.")
    @Size(min = 3, max = 50, message = "Street length must have 4 to 50 characters.")
    private String street;
    @NotEmpty(message = "City is required.")
    @Size(min = 3, max = 50, message = "City length must have 4 to 50 characters.")
    private String city;
    @NotEmpty(message = "State is required.")
    @Size(min = 3, max = 50, message = "State length must have 4 to 50 characters.")
    private String state;
    @NotEmpty(message = "Zip is required.")
    @Size(min = 3, max = 15, message = "Zip code length must have 3 to 15 characters.")
    private String zip;
    @OneToOne(mappedBy = "address", cascade = {CascadeType.MERGE}, fetch = FetchType.EAGER)
    @JsonIgnore
    private User user;
    @OneToMany(mappedBy = "deliveryAddress", fetch = FetchType.LAZY)
    @JsonIgnore
    private Set<Order> order = new HashSet<>();

    public Address(String street, String city, String state, String zip) {
        this.street = street;
        this.city = city;
        this.state = state;
        this.zip = zip;
    }

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
