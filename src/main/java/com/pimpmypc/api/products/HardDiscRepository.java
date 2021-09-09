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

public interface HardDiscRepository extends JpaRepository<HardDisc, Long>, QuerydslPredicateExecutor<HardDisc>
        , QuerydslBinderCustomizer<QHardDisc> {
    @Override
    default void customize(@NonNull QuerydslBindings bindings, @NonNull QHardDisc entity) {
        bindings.bind(String.class).first((SingleValueBinding<StringPath, String>) StringExpression::containsIgnoreCase);
    }

    default Page<HardDisc> findAllHardDiscs(Predicate predicate, Pageable pageable) {
        return this.findAll(predicate, pageable);
    }
}