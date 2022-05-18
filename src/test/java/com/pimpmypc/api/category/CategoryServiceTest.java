package com.pimpmypc.api.category;

import com.pimpmypc.api.product.Category;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.List;
import java.util.Optional;
import java.util.Set;

import static org.assertj.core.api.AssertionsForInterfaceTypes.assertThat;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
public class CategoryServiceTest {

    @InjectMocks
    private CategoryService categoryService;
    @Mock
    private CategoryRepository categoryRepository;

    @Test
    void shouldReturnCategories() {

        // given
        Category category = Category.builder().id(55L).title("Case").filterTypes(Set.of()).iconName("")
                .products(Set.of()).build();
        Category category2 = Category.builder().id(65L).title("Processor").filterTypes(Set.of()).iconName("")
                .products(Set.of()).build();

        List<Category> categoryList = List.of(category, category2);

        when(categoryRepository.findAll()).thenReturn(categoryList);

        // when

        List<Category> resultList = categoryService.getAllCategories();

        // then

        assertThat(categoryList.size()).isEqualTo(resultList.size());

    }

    @Test
    void shouldReturnCategoryByName() {
        // given
        Category category = Category.builder().id(55L).title("Motherboards").filterTypes(Set.of()).iconName("")
                .products(Set.of()).build();

        when(categoryRepository.findCategoryByTitle("Motherboards")).thenReturn(Optional.of(category));

        // when

        Optional<Category> result = categoryRepository.findCategoryByTitle("Motherboards");

        // then

        assertThat(category.getId()).isEqualTo(result.get().getId());
        assertThat(category.getTitle()).isEqualTo(result.get().getTitle());
    }

}
