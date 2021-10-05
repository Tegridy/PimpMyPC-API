package com.pimpmypc.api.product;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Set;

public interface FiltersRepository extends JpaRepository<FilterType, Long> {

    @Query(value = "SELECT * FROM filters_types WHERE category_id = ?1 ORDER BY filter_type", nativeQuery = true)
    Set<FilterType> findFiltersCategoriesById(long id);
}