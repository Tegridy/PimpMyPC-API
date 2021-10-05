package com.pimpmypc.api.category;

import com.pimpmypc.api.product.Category;
import com.pimpmypc.api.product.FilterType;

import java.util.List;
import java.util.Set;

public interface CategoryService {
    List<Category> getAllCategories();

    Set<FilterType> temp();
}
