package com.pimpmypc.api.product;

import com.pimpmypc.api.products.*;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ProductRepository<T extends Product> extends JpaRepository<T, Long>, QuerydslPredicateExecutor<T> {

    @Query("FROM processors")
    List<Processor> findAllProcessors(Pageable pagable);

    @Query("FROM motherboards")
    List<Motherboard> findAllMotherboards(Pageable pagable);

    @Query("FROM cases")
    List<Case> findAllCases(Pageable pagable);

    @Query("FROM ram_memory")
    List<Ram> findAllRamMemory(Pageable pagable);

    @Query("FROM mouses")
    List<Mouse> findAllMouses(Pageable pagable);

    @Query("FROM keyboards")
    List<Keyboard> findAllKeyboards(Pageable pagable);

    @Query("FROM monitors")
    List<Monitor> findAllMonitors(Pageable pagable);

    @Query("FROM graphic_cards")
    List<GraphicCard> findAllGraphicCards(Pageable pagable);

    @Query("FROM hard_discs")
    List<HardDisc> findAllHardDiscs(Pageable pagable);

    @Query("FROM laptops")
    List<Laptop> findAllLaptops(Pageable pagable);

    @Query("FROM computers")
    List<Computer> findAllComputers(Pageable pagable);

    @Query("SELECT p FROM processors p WHERE id = ?1")
    Optional<Processor> findProcessorById(Long id);

    @Query("SELECT m FROM motherboards m WHERE id = ?1")
    Optional<Motherboard> findMotherboardById(Long id);

    @Query("SELECT c FROM cases c WHERE id = ?1")
    Optional<Case> findCasedById(Long id);

    @Query("SELECT r FROM ram_memory r WHERE id = ?1")
    Optional<Ram> findRamById(Long id);

    @Query("SELECT m FROM mouses m WHERE id = ?1")
    Optional<Mouse> findMousedById(Long id);


    @Query("SELECT k FROM keyboards k WHERE id = ?1")
    Optional<Keyboard> findKeyboardById(Long id);

    @Query("SELECT m FROM monitors m WHERE id = ?1")
    Optional<Monitor> findMonitorById(Long id);

    @Query("SELECT h FROM hard_discs h WHERE id = ?1")
    Optional<HardDisc> findHardDiscById(Long id);


    @Query("SELECT g FROM graphic_cards g WHERE id = ?1")
    Optional<GraphicCard> findGraphicCardById(Long id);

    @Query("SELECT l FROM laptops l WHERE id = ?1")
    Optional<Laptop> findLaptopById(Long id);

    @Query("SELECT c FROM computers c WHERE id = ?1")
    Optional<Computer> findComputerById(Long id);
}