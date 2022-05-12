package com.pimpmypc.api.products;

import com.querydsl.core.BooleanBuilder;
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

public interface PowerSupplyRepository extends JpaRepository<PowerSupply, Long>, QuerydslPredicateExecutor<PowerSupply>
        , QuerydslBinderCustomizer<QPowerSupply> {
    @Override
    default void customize(@NonNull QuerydslBindings bindings, @NonNull QPowerSupply entity) {
        bindings.bind(String.class).first((SingleValueBinding<StringPath, String>) StringExpression::containsIgnoreCase);
    }

    default Page<PowerSupply> findAllPowerSupplies(Predicate predicate, Pageable pageable) {
        BooleanBuilder builder = new BooleanBuilder(predicate);
        builder.and(QPowerSupply.powerSupply.quantity.gt(1));

        return this.findAll(builder, pageable);
    }
}