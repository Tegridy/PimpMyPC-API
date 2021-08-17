package com.pimpmypc.api.product;

import com.pimpmypc.api.products.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository<T extends Product> extends JpaRepository<T, Long>, QuerydslPredicateExecutor<T> {

    @Query("FROM processors")
    List<Processor> findAllProcessors();

    @Query("FROM motherboards")
    List<Motherboard> findAllMotherboards();

    @Query("FROM cases")
    List<Case> findAllCases();

    @Query("FROM ram_memory")
    List<Ram> findAllRamMemory();

    @Query("FROM mouses")
    List<Mouse> findAllMouses();

    @Query("FROM keyboards")
    List<Keyboard> findAllKeyboards();

    @Query("FROM monitors")
    List<Monitor> findAllMonitors();

    @Query("FROM graphic_cards")
    List<GraphicCard> findAllGraphicCards();

    @Query("FROM hard_drives")
    List<HardDrive> findAllHardDrives();


    @Query("FROM laptops")
    List<Laptop> findAllLaptops();
}