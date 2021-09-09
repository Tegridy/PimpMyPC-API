package com.pimpmypc.api.category;

import com.pimpmypc.api.PimpMyPcApplication;
import com.pimpmypc.api.product.Category;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import javax.transaction.Transactional;
import java.util.List;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.*;
import static org.junit.jupiter.api.Assertions.assertNotNull;

@ExtendWith(SpringExtension.class)
@SpringBootTest(classes = PimpMyPcApplication.class)
@AutoConfigureMockMvc
@TestPropertySource(
        locations = "classpath:application-test.properties")
@Transactional
public class CategoryServiceTest {

    @Autowired
    private CategoryServiceImpl categoryService;
    @Autowired
    private CategoryRepository categoryRepository;

    @Test
    void shouldReturnCategories() {
        List<Category> categories = categoryService.getAllCategories();

        assertNotNull(categories);
        assertThat(categories,
                hasItem(hasProperty("title", is("Laptops"))));
        assertThat(categories,
                hasItem(hasProperty("title", is("Computers"))));
        assertThat(categories,
                hasItem(hasProperty("title", is("Smartphones"))));
    }
}
