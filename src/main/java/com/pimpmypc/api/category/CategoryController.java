package com.pimpmypc.api.category;

import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1/categories")
@AllArgsConstructor
public class CategoryController {

    private CategoryService categoryService;

    @GetMapping(value = "", produces = "application/json")
    public ResponseEntity<List<Category>> getCategories() {

        return ResponseEntity.ok(categoryService.getAllCategories());
    }

}
