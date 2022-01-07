package com.pimpmypc.api.order;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {

    // @Query("SELECT p FROM products p JOIN p.orders o WHERE o.id = ?1")
    // List<Product> getOrderProductsById(Long id);
}
