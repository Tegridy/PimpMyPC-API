package com.pimpmypc.api.category;

import com.pimpmypc.api.product.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Optional;

public interface CategoryRepository extends JpaRepository<Category, Long> {
    @Query(value = "SELECT * FROM categories WHERE title = ?1", nativeQuery = true)
    Optional<Category> findByName(String name);
}