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
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface LaptopRepository extends JpaRepository<Laptop, Long>, QuerydslPredicateExecutor<Laptop>
        , QuerydslBinderCustomizer<QLaptop> {

    @Override
    default void customize(@NonNull QuerydslBindings bindings, @NonNull QLaptop entity) {
        bindings.bind(entity.displaySize).all((path, value) -> {
            BooleanBuilder predicate = new BooleanBuilder();
            value.forEach(o -> predicate.or(path.containsIgnoreCase(o)));
            return Optional.of(predicate);
        });

        bindings.bind(String.class).first((SingleValueBinding<StringPath, String>) StringExpression::containsIgnoreCase);
    }

    default Page<Laptop> findAllLaptops(Predicate predicate, Pageable pageable) {
        BooleanBuilder builder = new BooleanBuilder(predicate);
        builder.and(QLaptop.laptop.quantity.gt(1));

        return this.findAll(builder, pageable);
    }
}
