package com.pimpmypc.api.product;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;
import org.springframework.stereotype.Repository;

import java.util.List;
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

    @Query(value = "SELECT *, 0 AS clazz_ FROM products ORDER BY number_of_sold DESC LIMIT 6", nativeQuery = true)
    List<Product> findOurChoice();

    @Query(value = "SELECT *, 0 AS clazz_ FROM products ORDER BY number_of_sold DESC LIMIT 18", nativeQuery = true)
    List<Product> findBestsellers();

    @Query(value = "SELECT *, 0 AS clazz_ FROM products ORDER BY id DESC LIMIT 1", nativeQuery = true)
    Product findNewestProduct();

    Optional<Product> findProductById(Long id);
}