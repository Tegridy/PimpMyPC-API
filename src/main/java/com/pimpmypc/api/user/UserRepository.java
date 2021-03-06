package com.pimpmypc.api.user;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    @EntityGraph(
            type = EntityGraph.EntityGraphType.FETCH,
            attributePaths = {
                    "address",
                    "roles",
            }
    )
    Optional<User> findByUsername(String username);

    @EntityGraph(
            type = EntityGraph.EntityGraphType.FETCH,
            attributePaths = {
                    "address",
                    "userOrders",
            }
    )
    Optional<User> getByUsername(String username);

    @EntityGraph(
            type = EntityGraph.EntityGraphType.FETCH,
            attributePaths = {
                    "address"
            }
    )
    Optional<User> findUserById(Long id);

    // @Query("SELECT DISTINCT u FROM users u JOIN FETCH u.userOrders WHERE u.id = :id")
    @EntityGraph(
            type = EntityGraph.EntityGraphType.FETCH,
            attributePaths = {
                    "userOrders"
            }
    )
    Optional<User> getUserById(Long id);

}
