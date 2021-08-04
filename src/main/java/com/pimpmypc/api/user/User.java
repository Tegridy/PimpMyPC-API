package com.pimpmypc.api.user;

import com.pimpmypc.api.security.Role;
import lombok.Data;
import org.springframework.context.annotation.Bean;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import java.util.List;

@Data
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @NotNull
    private String username;
    @NotNull
    private String password;
    @Email
    private String email;

    @ElementCollection(fetch = FetchType.EAGER)
    List<Role> roles;

    public User(String username, String email, String password) {
        this.username = username;
        this.email = email;
        this.password = password;
    }

    public List<Role> getRoles(){
        return roles;
    }
}