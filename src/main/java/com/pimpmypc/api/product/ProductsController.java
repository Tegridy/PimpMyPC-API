package com.pimpmypc.api.product;

import com.pimpmypc.api.products.Motherboard;
import com.pimpmypc.api.products.Processor;
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

    @GetMapping("")
    public ResponseEntity<List<Product>> getAllProducts() {
        return ResponseEntity.ok().body(productService.getAllProducts());
    }

    @GetMapping("/processors")
    public ResponseEntity<List<Processor>> returnProcessor() {
        List<Processor> processors = productService.getAllProcessors();
        return ResponseEntity.ok().body(processors);
    }

    @GetMapping("/motherboards")
    public ResponseEntity<List<Motherboard>> getAllMotherboards() {
        return ResponseEntity.ok(productService.getAllMotherboards());
    }
}
