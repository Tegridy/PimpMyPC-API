package com.pimpmypc.api.product;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository<T extends Product> extends JpaRepository<T, Long>, QuerydslPredicateExecutor<T> {

    @Query(value = "SELECT p FROM products p WHERE p.title LIKE CONCAT('%',:productName,'%')")
    Page<Product> findProductsByName(String productName, Pageable pageable);

//    @Query(value = "SELECT p.id, p.title, p.price FROM products as p " +
//            "JOIN product_category as c ON c.product_id = p.id " +
//            "JOIN categories as d ON d.id = c.category_id", nativeQuery = true)
//    List<Tuple> findProductsByNameAndCategory(String productName, String category);

    @Query(value = "SELECT p FROM products p " +
            "JOIN p.categories c " +
            "WHERE c.title LIKE CONCAT('%',:category,'%') " +
            "AND p.title LIKE CONCAT('%',:productName,'%')")
    Page<Product> findProductsByNameAndCategory(String productName, String category, Pageable pageable);

    @Query(value = "SELECT p FROM products p ORDER BY p.numberOfItemsSold")
    List<Product> findTopSellingProducts();


//    @Query("SELECT p FROM processors p WHERE id = ?1")
//    Optional<Processor> findProcessorById(Long id);
//
//    @Query("SELECT m FROM motherboards m WHERE id = ?1")
//    Optional<Motherboard> findMotherboardById(Long id);
//
//    @Query("SELECT c FROM cases c WHERE id = ?1")
//    Optional<Case> findCasedById(Long id);
//
//    @Query("SELECT r FROM ram_memory r WHERE id = ?1")
//    Optional<Ram> findRamById(Long id);
//
//    @Query("SELECT m FROM mouses m WHERE id = ?1")
//    Optional<Mouse> findMousedById(Long id);
//
//    @Query("SELECT k FROM keyboards k WHERE id = ?1")
//    Optional<Keyboard> findKeyboardById(Long id);
//
//    @Query("SELECT m FROM monitors m WHERE id = ?1")
//    Optional<Monitor> findMonitorById(Long id);
//
//    @Query("SELECT h FROM hard_discs h WHERE id = ?1")
//    Optional<HardDisc> findHardDiscById(Long id);
//
//    @Query("SELECT g FROM graphic_cards g WHERE id = ?1")
//    Optional<GraphicCard> findGraphicCardById(Long id);
//
//    @Query("SELECT l FROM laptops l WHERE id = ?1")
//    Optional<Laptop> findLaptopById(Long id);
//
//    @Query("SELECT c FROM computers c WHERE id = ?1")
//    Optional<Computer> findComputerById(Long id);
}