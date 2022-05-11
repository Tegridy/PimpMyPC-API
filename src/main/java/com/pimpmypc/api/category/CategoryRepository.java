package com.pimpmypc.api.category;

import com.pimpmypc.api.product.Category;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface CategoryRepository extends JpaRepository<Category, Long> {

    Optional<Category> findCategoryByTitle(String title);
}