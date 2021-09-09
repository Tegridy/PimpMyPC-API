package com.pimpmypc.api.product;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository<T extends Product> extends JpaRepository<T, Long>, QuerydslPredicateExecutor<T> {

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