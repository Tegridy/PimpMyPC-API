package com.pimpmypc.api.category;

import com.pimpmypc.api.product.Category;
import com.pimpmypc.api.product.FilterType;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

@Service
@AllArgsConstructor
public class CategoryServiceImpl implements CategoryService {

    private CategoryRepository categoryRepository;

    @Override
    public List<Category> getAllCategories() {
        return categoryRepository.findAll();
    }

    @Override
    public Set<FilterType> temp() {
        return null;
    }


}
