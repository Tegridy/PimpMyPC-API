package com.pimpmypc.api.user;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.pimpmypc.api.security.Role;
import com.pimpmypc.api.utils.BaseEntity;
import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity(name = "users")
public class User extends BaseEntity {

    @ElementCollection(fetch = FetchType.EAGER)
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
    @JsonIgnore
    private String password;

    @Email
    @NotEmpty(message = "E-mail is required.")
    private String email;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id")
    private Address address;

    public List<Role> getRoles() {
        return roles;
    }
}