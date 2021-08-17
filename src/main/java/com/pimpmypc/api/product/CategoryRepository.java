package com.pimpmypc.api.product;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CategoryRepository extends JpaRepository<Category, Long> {
    @Query(value = "Select * from categories Where title = ?1", nativeQuery = true)
    Category findByName(String name);
}