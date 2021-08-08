package com.pimpmypc.api.user;

import com.pimpmypc.api.security.Role;
import lombok.*;
import org.hibernate.Hibernate;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Objects;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity(name = "users")
public class User {

    @ElementCollection(fetch = FetchType.EAGER)
    List<Role> roles;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

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

    @CreatedDate
    @Column(name = "created_at")
    private LocalDateTime createdAt;
    @LastModifiedDate
    @Column(name = "modified_at")
    private LocalDateTime modifiedAt;

    public List<Role> getRoles() {
        return roles;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        User user = (User) o;

        return Objects.equals(id, user.id);
    }

    @Override
    public int hashCode() {
        return 562048007;
    }
}