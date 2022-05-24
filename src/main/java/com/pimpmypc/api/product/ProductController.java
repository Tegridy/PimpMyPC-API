package com.pimpmypc.api.product;

import com.pimpmypc.api.product.dto.ProductDto;
import com.querydsl.core.types.Predicate;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.querydsl.binding.QuerydslPredicate;
import org.springframework.http.ResponseEntity;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/v1/products")
@AllArgsConstructor
public class ProductController {

    private final ProductService productService;
    private final ProductRepository productRepository;

    @GetMapping(value = "", produces = "application/json")
    public ResponseEntity<ProductsResponse> getAllProducts(Pageable pageable,
                                                           @QuerydslPredicate(root = Product.class) Predicate predicate, @RequestParam Long categoryId,
                                                           @RequestParam MultiValueMap<String, String> requestParams) {
        return ResponseEntity.ok(productService.getAllProducts(requestParams, predicate, pageable, categoryId));
    }

    @GetMapping(value = "/{id}", produces = "application/json")
    public ResponseEntity<Product> getProductById(@PathVariable Long id) {
        return ResponseEntity.ok(productService.findProductById(id));
    }

    @GetMapping(value = "/search", params = "productName", produces = "application/json")
    public ResponseEntity<Page<ProductDto>> getProductsByName(@RequestParam String productName, Pageable pageable) {
        return ResponseEntity.ok(productService.findProductsByName(productName, pageable));
    }

    @GetMapping(value = "/search", params = {"productName", "productCategory"}, produces = "application/json")
    public ResponseEntity<Page<ProductDto>> getProductsByNameAndCategory(@RequestParam String productName,
                                                                         @RequestParam String productCategory,
                                                                         Pageable pageable) {
        return ResponseEntity.ok(productService.findProductsByNameAndCategory(productName, productCategory, pageable));
    }

    @GetMapping(value = "/top", produces = "application/json")
    public ResponseEntity<Page<ProductDto>> getTopSellingItems() {
        return ResponseEntity.ok(productService.getBestsellers());
    }

    @GetMapping(value = "/our-choice", produces = "application/json")
    public ResponseEntity<Page<ProductDto>> getOurChoice() {
        return ResponseEntity.ok(productService.getOurChoiceProducts());
    }

    @GetMapping(value = "/newest", produces = "application/json")
    public ResponseEntity<Page<ProductDto>> getNewestProduct() {
        return ResponseEntity.ok(productService.getNewestProduct());
    }
}
