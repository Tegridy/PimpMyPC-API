package com.pimpmypc.api.product;

import com.pimpmypc.api.category.CategoryService;
import com.pimpmypc.api.product.dto.ProductDto;
import com.pimpmypc.api.products.*;
import com.querydsl.core.types.Predicate;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.querydsl.binding.QuerydslPredicate;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/products")
@CrossOrigin("*")
@AllArgsConstructor
public class ProductController {

    private final CategoryService categoryService;
    private final ProductService productService;

    @GetMapping(value = "/processors", produces = "application/json")
    public ResponseEntity<ProductsResponse> returnProcessors(Pageable pageable,
                                                             @QuerydslPredicate(root = Processor.class) Predicate predicate) {

        return ResponseEntity.ok(productService.getAllProcessors(predicate, pageable));
    }

    @GetMapping(value = "/motherboards", produces = "application/json")
    public ResponseEntity<ProductsResponse> getAllMotherboards(Pageable pageable,
                                                               @QuerydslPredicate(root = Motherboard.class) Predicate predicate) {
        return ResponseEntity.ok(productService.getAllMotherboards(predicate, pageable));
    }

    @GetMapping(value = "/cases", produces = "application/json")
    public ResponseEntity<ProductsResponse> getAllCases(Pageable pageable,
                                                        @QuerydslPredicate(root = Case.class) Predicate predicate) {
        return ResponseEntity.ok(productService.getAllCases(predicate, pageable));
    }

    @GetMapping(value = "/rams", produces = "application/json")
    public ResponseEntity<ProductsResponse> getAllRamMemory(Pageable pageable,
                                                            @QuerydslPredicate(root = Ram.class) Predicate predicate) {
        return ResponseEntity.ok(productService.getAllRamMemory(predicate, pageable));
    }

    @GetMapping(value = "/mouses", produces = "application/json")
    public ResponseEntity<ProductsResponse> getAllMouses(Pageable pageable,
                                                         @QuerydslPredicate(root = Mouse.class) Predicate predicate) {
        return ResponseEntity.ok(productService.getAllMouses(predicate, pageable));
    }

    @GetMapping(value = "/keyboards", produces = "application/json")
    public ResponseEntity<ProductsResponse> getAllKeyboards(Pageable pageable,
                                                            @QuerydslPredicate(root = Keyboard.class) Predicate predicate) {
        return ResponseEntity.ok(productService.getAllKeyboards(predicate, pageable));
    }

    @GetMapping(value = "/monitors", produces = "application/json")
    public ResponseEntity<ProductsResponse> getAllMonitors(Pageable pageable,
                                                           @QuerydslPredicate(root = Monitor.class) Predicate predicate) {
        return ResponseEntity.ok(productService.getAllMonitors(predicate, pageable));
    }

    @GetMapping(value = "/drives", produces = "application/json")
    public ResponseEntity<ProductsResponse> getAllHardDiscs(Pageable pageable,
                                                            @QuerydslPredicate(root = HardDrive.class) Predicate predicate) {
        return ResponseEntity.ok(productService.getAllHardDiscs(predicate, pageable));
    }

    @GetMapping(value = "/power-supplies", produces = "application/json")
    public ResponseEntity<ProductsResponse> getAllPowerSupplies(Pageable pageable,
                                                                @QuerydslPredicate(root = PowerSupply.class) Predicate predicate) {
        return ResponseEntity.ok(productService.getAllPowerSupplies(predicate, pageable));
    }

    @GetMapping(value = "/graphics", produces = "application/json")
    public ResponseEntity<ProductsResponse> getAllGraphicCards(Pageable pageable,
                                                               @QuerydslPredicate(root = GraphicCard.class) Predicate predicate) {
        return ResponseEntity.ok(productService.getAllGraphicCards(predicate, pageable));
    }

    @GetMapping(value = "/smartphones", produces = "application/json")
    public ResponseEntity<ProductsResponse> getAllSmartphones(Pageable pageable,
                                                              @QuerydslPredicate(root = Smartphone.class) Predicate predicate) {
        return ResponseEntity.ok(productService.getAllSmartphones(predicate, pageable));
    }

    @GetMapping(value = "/laptops", produces = "application/json")
    public ResponseEntity<ProductsResponse> getAllLaptops(Pageable pageable,
                                                          @QuerydslPredicate(root = Laptop.class) Predicate predicate) {
        return ResponseEntity.ok(productService.getAllLaptops(predicate, pageable));
    }

    @GetMapping(value = "/computers", produces = "application/json")
    public ResponseEntity<ProductsResponse> getAllComputers(Pageable pageable,
                                                            @QuerydslPredicate(root = Computer.class) Predicate predicate) {
        return ResponseEntity.ok(productService.getAllComputers(predicate, pageable));
    }

    @GetMapping(value = "/{id}", produces = "application/json")
    public ResponseEntity<Product> getProduct(@PathVariable Long id) {
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
    public ResponseEntity<List<ProductDto>> getTopSellingItems() {
        return ResponseEntity.ok(productService.getBestsellers());
    }

    @GetMapping(value = "/our-choice", produces = "application/json")
    public ResponseEntity<List<ProductDto>> getOurChoice() {
        return ResponseEntity.ok(productService.getOurChoiceProducts());
    }

    @GetMapping(value = "/newest", produces = "application/json")
    public ResponseEntity<Product> getNewestProduct() {
        return ResponseEntity.ok(productService.getNewestProduct());
    }
}
