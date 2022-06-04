package com.pimpmypc.api.filters;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Set;

public interface FiltersRepository extends JpaRepository<FilterType, Long> {

    @EntityGraph(
            type = EntityGraph.EntityGraphType.FETCH,
            attributePaths = {
                    "category",
                    "values"
            }
    )
    Set<FilterType> findByCategoryIdOrderByName(Long id);
}