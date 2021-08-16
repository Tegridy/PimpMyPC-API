package com.pimpmypc.api.product;

import com.pimpmypc.api.products.*;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/products")
@CrossOrigin("*")
public class ProductsController {

    private final ProductRepository<Product> productRepository;
    private final ProductService productService;

    public ProductsController(ProductRepository<Product> productRepository, ProductService productService) {
        this.productRepository = productRepository;
        this.productService = productService;
    }

    @GetMapping(value = "/{productId}", produces = "application/json")
    public ResponseEntity<Product> getProductById(@PathVariable("productId") long id) {
        Product product = productService.getProductById(id);
        return ResponseEntity.ok().body(product);
    }

    @GetMapping(value = "", produces = "application/json")
    public ResponseEntity<List<Product>> getAllProducts() {
        return ResponseEntity.ok().body(productService.getAllProducts());
    }

    @GetMapping(value = "/processors", produces = "application/json")
    public ResponseEntity<List<Processor>> returnProcessor() {
        List<Processor> processors = productService.getAllProcessors();
        return ResponseEntity.ok().body(processors);
    }

    @GetMapping(value = "/motherboards", produces = "application/json")
    public ResponseEntity<List<Motherboard>> getAllMotherboards() {
        return ResponseEntity.ok(productService.getAllMotherboards());
    }

    @GetMapping(value = "/cases", produces = "application/json")
    public ResponseEntity<List<Case>> getAllCases() {
        return ResponseEntity.ok(productService.getAllCases());
    }

    @GetMapping(value = "/rams", produces = "application/json")
    public ResponseEntity<List<Ram>> getAllRamMemory() {
        return ResponseEntity.ok(productService.getAllRamMemory());
    }

    @GetMapping(value = "/mouses", produces = "application/json")
    public ResponseEntity<List<Mouse>> getAllMouses() {
        return ResponseEntity.ok(productService.getAllMouses());
    }

    @GetMapping(value = "/keyboards", produces = "application/json")
    public ResponseEntity<List<Keyboard>> getAllKeyboards() {
        return ResponseEntity.ok(productService.getAllKeyboards());
    }

    @GetMapping(value = "/monitors", produces = "application/json")
    public ResponseEntity<List<Monitor>> getAllMonitors() {
        return ResponseEntity.ok(productService.getAllMonitors());
    }

    @GetMapping(value = "/drives", produces = "application/json")
    public ResponseEntity<List<HardDrive>> getAllHardDrives() {
        return ResponseEntity.ok(productService.getAllHardDrives());
    }

    @GetMapping(value = "/graphics", produces = "application/json")
    public ResponseEntity<List<GraphicCard>> getAllGraphicCards() {
        return ResponseEntity.ok(productService.getAllGraphicCards());
    }

    @GetMapping(value = "/laptops", produces = "application/json")
    public ResponseEntity<List<Laptop>> getAllLaptops() {
        return ResponseEntity.ok(productService.getAllLaptops());
    }
}
