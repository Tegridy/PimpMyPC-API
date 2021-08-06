package com.pimpmypc.api.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {
    
    @Query(value = "select * from users where username = ?1", nativeQuery = true)
    Optional<User> findByUsername(String username);
}
