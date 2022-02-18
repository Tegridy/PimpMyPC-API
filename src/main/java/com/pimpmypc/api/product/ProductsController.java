package com.pimpmypc.api.product;

import com.pimpmypc.api.category.CategoryService;
import com.pimpmypc.api.products.*;
import com.pimpmypc.api.products.dto.ProcessorDto;
import com.querydsl.core.types.Predicate;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.querydsl.binding.QuerydslPredicate;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/v1/products")
@CrossOrigin("*")
public class ProductsController {

    private final CategoryService categoryService;
    private final ProductService productService;
    private final FiltersRepository filterTypeRepository;

    private final int PAGE_SIZE = 9;

    public ProductsController(ProductService productService, CategoryService categoryService, FiltersRepository filterTypeRepository) {
        this.productService = productService;
        this.categoryService = categoryService;
        this.filterTypeRepository = filterTypeRepository;
    }


    @GetMapping(value = "/processors", produces = "application/json")
    public ResponseEntity<ProductsDto2<ProcessorDto>> returnProcessors(Pageable pageable,
                                                                       @QuerydslPredicate(root = Processor.class) Predicate predicate) {
        return ResponseEntity.ok(productService.getAllProcessors(predicate, pageable));
    }

    @GetMapping(value = "/motherboards", produces = "application/json")
    public ResponseEntity<ProductsDto<Motherboard>> getAllMotherboards(Pageable pageable,
                                                                       @QuerydslPredicate(root = Motherboard.class) Predicate predicate) {
        return ResponseEntity.ok(productService.getAllMotherboards(predicate, pageable));
    }

    @GetMapping(value = "/cases", produces = "application/json")
    public ResponseEntity<ProductsDto<Case>> getAllCases(Pageable pageable,
                                                         @QuerydslPredicate(root = Case.class) Predicate predicate) {
        return ResponseEntity.ok(productService.getAllCases(predicate, pageable));
    }

    @GetMapping(value = "/rams", produces = "application/json")
    public ResponseEntity<ProductsDto<Ram>> getAllRamMemory(Pageable pageable,
                                                            @QuerydslPredicate(root = Ram.class) Predicate predicate) {
        return ResponseEntity.ok(productService.getAllRamMemory(predicate, pageable));
    }

    @GetMapping(value = "/mouses", produces = "application/json")
    public ResponseEntity<ProductsDto<Mouse>> getAllMouses(Pageable pageable,
                                                           @QuerydslPredicate(root = Mouse.class) Predicate predicate) {
        return ResponseEntity.ok(productService.getAllMouses(predicate, pageable));
    }

    @GetMapping(value = "/keyboards", produces = "application/json")
    public ResponseEntity<ProductsDto<Keyboard>> getAllKeyboards(Pageable pageable,
                                                                 @QuerydslPredicate(root = Keyboard.class) Predicate predicate) {
        return ResponseEntity.ok(productService.getAllKeyboards(predicate, pageable));
    }

    @GetMapping(value = "/monitors", produces = "application/json")
    public ResponseEntity<ProductsDto<Monitor>> getAllMonitors(Pageable pageable,
                                                               @QuerydslPredicate(root = Monitor.class) Predicate predicate) {
        return ResponseEntity.ok(productService.getAllMonitors(predicate, pageable));
    }

    @GetMapping(value = "/drives", produces = "application/json")
    public ResponseEntity<ProductsDto<HardDrive>> getAllHardDiscs(Pageable pageable,
                                                                  @QuerydslPredicate(root = HardDrive.class) Predicate predicate) {
        return ResponseEntity.ok(productService.getAllHardDiscs(predicate, pageable));
    }

    @GetMapping(value = "/power-supplies", produces = "application/json")
    public ResponseEntity<ProductsDto<PowerSupply>> getAllPowerSupplies(Pageable pageable,
                                                                        @QuerydslPredicate(root = PowerSupply.class) Predicate predicate) {
        return ResponseEntity.ok(productService.getAllPowerSupplies(predicate, pageable));
    }

    @GetMapping(value = "/graphics", produces = "application/json")
    public ResponseEntity<ProductsDto<GraphicCard>> getAllGraphicCards(Pageable pageable,
                                                                       @QuerydslPredicate(root = GraphicCard.class) Predicate predicate) {
        return ResponseEntity.ok(productService.getAllGraphicCards(predicate, pageable));
    }

    @GetMapping(value = "/smartphones", produces = "application/json")
    public ResponseEntity<ProductsDto<Smartphone>> getAllSmartphones(Pageable pageable,
                                                                     @QuerydslPredicate(root = Smartphone.class) Predicate predicate) {
        return ResponseEntity.ok(productService.getAllSmartphones(predicate, pageable));
    }

    @GetMapping(value = "", produces = "application/json")
    public ResponseEntity<List<Product>> getAllProducts(Pageable pageable) {
        return ResponseEntity.ok().body(productService.getAllProducts());
    }

    @GetMapping(value = "/laptops", produces = "application/json")
    public ResponseEntity<ProductsDto<Laptop>> getAllLaptops(Pageable pageable,
                                                             @QuerydslPredicate(root = Laptop.class) Predicate predicate) {
        return ResponseEntity.ok(productService.getAllLaptops(predicate, pageable));
    }

    private <T extends Product> Map<String, Object> createResponse(Page<T> product) {
        Map<String, Object> response = new HashMap<>();
        response.put("products", product.getContent());
        response.put("productsCount", product.getTotalElements());
        response.put("currentPage", product.getNumber());

        return response;
    }


    @GetMapping(value = "/computers", produces = "application/json")
    public ResponseEntity<ProductsDto<Computer>> getAllComputers(Pageable pageable,
                                                                 @QuerydslPredicate(root = Computer.class) Predicate predicate) {
        return ResponseEntity.ok(productService.getAllComputers(predicate, pageable));
    }

    @GetMapping(value = "/{id}", produces = "application/json")
    public ResponseEntity<Product> getProduct(@PathVariable Long id) {
        return ResponseEntity.ok(productService.findProductById(id));
    }

    @GetMapping(value = "/search", params = "productName")
    public ResponseEntity<Page<Product>> getProductsByName(@RequestParam String productName, Pageable pageable) {
        return ResponseEntity.ok(productService.findProductByName(productName, pageable));
    }

    @GetMapping(value = "/search", params = {"productName", "productCategory"})
    public ResponseEntity<Page<Product>> getProductsByNameAndCategory(@RequestParam String productName,
                                                                      @RequestParam String productCategory,
                                                                      Pageable pageable) {
        return ResponseEntity.ok(productService.findProductsByNameAndCategory(productName, productCategory, pageable));
    }

    @GetMapping(value = "/categories")
    public ResponseEntity<List<Category>> getCategories() {
        return ResponseEntity.ok(categoryService.getAllCategories());
    }

    @GetMapping(value = "/top")
    public ResponseEntity<List<Product>> getTopSellingItems() {
        return ResponseEntity.ok(productService.getBestsellers());
    }

    @GetMapping(value = "/our-choice")
    public ResponseEntity<List<Product>> getOurChoice() {
        return ResponseEntity.ok(productService.getOurChoiceProducts());
    }

    @GetMapping(value = "/newest")
    public ResponseEntity<Product> getNewestProduct() {
        return ResponseEntity.ok(productService.getNewestProduct());
    }
}
