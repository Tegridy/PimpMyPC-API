package com.pimpmypc.api.product;

import com.pimpmypc.api.category.Category;
import com.querydsl.core.BooleanBuilder;
import com.querydsl.core.types.Predicate;
import com.querydsl.core.types.dsl.BooleanExpression;
import com.querydsl.core.types.dsl.StringExpression;
import com.querydsl.core.types.dsl.StringPath;
import com.querydsl.jpa.JPAExpressions;
import com.querydsl.jpa.impl.JPAQuery;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;
import org.springframework.data.querydsl.binding.QuerydslBinderCustomizer;
import org.springframework.data.querydsl.binding.QuerydslBindings;
import org.springframework.data.querydsl.binding.SingleValueBinding;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Repository;
import org.springframework.util.MultiValueMap;

import java.util.List;
import java.util.Map;
import java.util.Optional;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long>, QuerydslPredicateExecutor<Product>
        , QuerydslBinderCustomizer<QProduct> {

    @Override
    default void customize(@NonNull QuerydslBindings bindings, @NonNull QProduct entity) {
        bindings.bind(String.class).first((SingleValueBinding<StringPath, String>) StringExpression::containsIgnoreCase);
    }

    @Query(value = "SELECT p FROM products p WHERE p.title LIKE CONCAT('%', :productName, '%')")
    Page<Product> findProductsByName(String productName, Pageable pageable);

    @Query(value = "SELECT p FROM products p " +
            "LEFT JOIN p.categories c " +
            "WHERE c.id = :categoryId " +
            "AND p.title LIKE CONCAT('%', :productName, '%')")
    Page<Product> findProductsByNameAndByCategoryId(String productName, Long categoryId, Pageable pageable);

    Page<Product> findProductsByOrderByNumberOfItemsSoldDesc(Pageable pageable);

    Page<Product> findProductByOrderByIdDesc(Pageable pageable);

    @EntityGraph(
            type = EntityGraph.EntityGraphType.FETCH,
            attributePaths = {
                    "colors",
                    "categories",
                    "attributes"
            }
    )
    Optional<Product> findDistinctById(Long id);


    default Page<Product> findProductsByCategoryId(MultiValueMap<String, String> searchParams, Predicate predicate,
                                                   Pageable pageable, Category category) {

        BooleanBuilder booleanBuilder = new BooleanBuilder();


        for (Map.Entry<String, List<String>> entry : searchParams.entrySet()) {

            if (entry.getValue().size() > 1) {

                for (String s : entry.getValue()) {


                    JPAQuery<Product> subQuery = new JPAQuery<Product>();
                    subQuery.from(QProductAttributes.productAttributes)
                            .where(QProductAttributes.productAttributes.product.eq(QProduct.product),
                                    QProductAttributes.productAttributes.attributeName.eq(entry.getKey()),
                                    QProductAttributes.productAttributes.attributeValue.like(s + "%"));

                    booleanBuilder.or(subQuery.exists());
                }
            } else {


                JPAQuery<Product> subQuery = new JPAQuery<Product>();
                subQuery.from(QProductAttributes.productAttributes)
                        .where(QProductAttributes.productAttributes.product.eq(QProduct.product),
                                QProductAttributes.productAttributes.attributeName.eq(entry.getKey()),
                                QProductAttributes.productAttributes.attributeValue.like(entry.getValue().get(0) + "%"));


                booleanBuilder.and(subQuery.exists());
            }
        }

        BooleanExpression booleanExpression = JPAExpressions.selectOne().from(QProductAttributes.productAttributes)
                .where(
                        booleanBuilder,
                        predicate,
                        QProduct.product.quantity.gt(1),
                        QProduct.product.categories.contains(category)
                ).exists();


        return this.findAll(booleanExpression, pageable);
    }

}