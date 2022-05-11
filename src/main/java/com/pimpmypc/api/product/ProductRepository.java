package com.pimpmypc.api.product;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long>, QuerydslPredicateExecutor<Product> {

    @Query(value = "SELECT p FROM products p WHERE p.title LIKE CONCAT('%',:productName,'%')")
    Page<Product> findProductsByName(String productName, Pageable pageable);

    @Query(value = "SELECT p FROM products p " +
            "JOIN p.categories c " +
            "WHERE c.title LIKE CONCAT('%',:category,'%') " +
            "AND p.title LIKE CONCAT('%',:productName,'%')")
    Page<Product> findProductsByNameAndCategory(String productName, String category, Pageable pageable);

    Page<Product> findProductsByOrderByNumberOfItemsSoldDesc(Pageable pageable);

    Page<Product> findProductByOrderByIdDesc(Pageable pageable);

    Optional<Product> findProductById(Long id);
}