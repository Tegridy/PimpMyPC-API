package com.pimpmypc.api.user;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.pimpmypc.api.order.Order;
import com.pimpmypc.api.security.Role;
import com.pimpmypc.api.user.address.Address;
import com.pimpmypc.api.utils.BaseEntity;
import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity(name = "users")
@JsonIgnoreProperties(value = {"createdAt", "modifiedAt", "roles", "addressId"})
@Builder
public class User extends BaseEntity {

    @ElementCollection(fetch = FetchType.EAGER)
    @JsonIgnore
    List<Role> roles;

    @NotEmpty(message = "Username is required.")
    @Size(min = 4, max = 50, message = "Username length must have 4 to 50 characters.")
    private String username;

    @NotEmpty(message = "First name is required.")
    @Column(name = "first_name")
    @Size(min = 2, max = 50, message = "First name length must have 2 to 50 characters.")
    private String firstName;

    @NotEmpty(message = "Last name is required.")
    @Column(name = "last_name")
    @Size(min = 2, max = 50, message = "Last name length must have 2 to 50 characters.")
    private String lastName;

    private String phone;

    @NotEmpty(message = "Password is required.")
    @Size(min = 8, message = "Password must have at least 8 characters.")
    private String password;

    @Email
    @NotEmpty(message = "E-mail is required.")
    private String email;

    @OneToOne(cascade = {CascadeType.PERSIST, CascadeType.MERGE}, fetch = FetchType.EAGER)
    @JoinColumn(name = "address_id", referencedColumnName = "id")
    private Address address;

    @OneToMany(mappedBy = "user", cascade = {CascadeType.MERGE, CascadeType.PERSIST}, fetch = FetchType.LAZY)
    private List<Order> userOrders = new ArrayList<>();

    public List<Role> getRoles() {
        return roles;
    }

    public void addUserOrder(Order order) {
        this.userOrders.add(order);
    }

    @Override
    public String toString() {
        return "User{" +
                "roles=" + roles +
                ", username='" + username + '\'' +
                ", firstName='" + firstName + '\'' +
                ", email='" + email + '\'' +
                ", address=" + address +
                ", userOrders=" + userOrders +
                '}';
    }
}