package com.pimpmypc.api.product;

import com.pimpmypc.api.products.Motherboard;
import com.pimpmypc.api.products.Processor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository<T extends Product> extends JpaRepository<T, Long> {

    @Query("FROM processors")
    List<Processor> findAllProcessors();

    @Query("FROM motherboards")
    List<Motherboard> findAllMotherboards();
}