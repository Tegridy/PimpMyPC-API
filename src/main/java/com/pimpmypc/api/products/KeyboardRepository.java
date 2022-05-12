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

public interface KeyboardRepository extends JpaRepository<Keyboard, Long>, QuerydslPredicateExecutor<Keyboard>
        , QuerydslBinderCustomizer<QKeyboard> {
    @Override
    default void customize(@NonNull QuerydslBindings bindings, @NonNull QKeyboard entity) {
        bindings.bind(String.class).first((SingleValueBinding<StringPath, String>) StringExpression::containsIgnoreCase);
    }

    default Page<Keyboard> findAllKeyboards(Predicate predicate, Pageable pageable) {
        BooleanBuilder builder = new BooleanBuilder(predicate);
        builder.and(QKeyboard.keyboard.quantity.gt(1));

        return this.findAll(builder, pageable);
    }
}