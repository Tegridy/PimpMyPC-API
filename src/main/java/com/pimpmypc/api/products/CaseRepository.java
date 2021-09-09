package com.pimpmypc.api.products;

import com.querydsl.core.types.Predicate;
import com.querydsl.core.types.dsl.StringExpression;
import com.querydsl.core.types.dsl.StringPath;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;
import org.springframework.data.querydsl.binding.QuerydslBinderCustomizer;
import org.springframework.data.querydsl.binding.QuerydslBindings;
import org.springframework.data.querydsl.binding.SingleValueBinding;
import org.springframework.lang.NonNull;

public interface CaseRepository extends JpaRepository<Case, Long>, QuerydslPredicateExecutor<Case>
        , QuerydslBinderCustomizer<QCase> {
    @Override
    default void customize(@NonNull QuerydslBindings bindings, @NonNull QCase entity) {
        bindings.bind(String.class).first((SingleValueBinding<StringPath, String>) StringExpression::containsIgnoreCase);
    }

    default Page<Case> findAllCases(Predicate predicate, Pageable pageable) {
        return this.findAll(predicate, pageable);
    }
}