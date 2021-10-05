package com.pimpmypc.api.product;

import com.pimpmypc.api.category.CategoryService;
import com.pimpmypc.api.products.Computer;
import com.pimpmypc.api.products.Laptop;
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


//    @GetMapping(value = "/processors", produces = "application/json")
//    public ResponseEntity<List<Processor>> returnProcessors(@RequestParam int page) {
//        List<Processor> processors = productService.getAllProcessors(page, PAGE_SIZE);
//        return ResponseEntity.ok().body(processors);
//    }
//
//    @GetMapping(value = "/motherboards", produces = "application/json")
//    public ResponseEntity<List<Motherboard>> getAllMotherboards(@RequestParam int page) {
//        return ResponseEntity.ok(productService.getAllMotherboards(page, PAGE_SIZE));
//    }
//
//    @GetMapping(value = "/cases", produces = "application/json")
//    public ResponseEntity<List<Case>> getAllCases(@RequestParam int page) {
//        return ResponseEntity.ok(productService.getAllCases(page, PAGE_SIZE));
//    }
//
//    @GetMapping(value = "/rams", produces = "application/json")
//    public ResponseEntity<List<Ram>> getAllRamMemory(@RequestParam int page) {
//        return ResponseEntity.ok(productService.getAllRamMemory(page, PAGE_SIZE));
//    }
//
//    @GetMapping(value = "/mouses", produces = "application/json")
//    public ResponseEntity<List<Mouse>> getAllMouses(@RequestParam int page) {
//        return ResponseEntity.ok(productService.getAllMouses(page, PAGE_SIZE));
//    }
//
//    @GetMapping(value = "/keyboards", produces = "application/json")
//    public ResponseEntity<List<Keyboard>> getAllKeyboards(@RequestParam int page) {
//        return ResponseEntity.ok(productService.getAllKeyboards(page, PAGE_SIZE));
//    }
//
//    @GetMapping(value = "/monitors", produces = "application/json")
//    public ResponseEntity<List<Monitor>> getAllMonitors(@RequestParam int page) {
//        return ResponseEntity.ok(productService.getAllMonitors(page, PAGE_SIZE));
//    }
//
//    @GetMapping(value = "/drives", produces = "application/json")
//    public ResponseEntity<List<HardDisc>> getAllHardDrives(@RequestParam int page) {
//        return ResponseEntity.ok(productService.getAllHardDiscs(page, PAGE_SIZE));
//    }
//
//    @GetMapping(value = "/graphics", produces = "application/json")
//    public ResponseEntity<List<GraphicCard>> getAllGraphicCards(@RequestParam int page) {
//        return ResponseEntity.ok(productService.getAllGraphicCards(page, PAGE_SIZE));
//    }

    @GetMapping(value = "/{productId}", produces = "application/json")
    public ResponseEntity<Product> getProductById(@PathVariable("productId") long id) {
        Product product = productService.getProductById(id);
        return ResponseEntity.ok().body(product);
    }

    @GetMapping(value = "", produces = "application/json")
    public ResponseEntity<List<Product>> getAllProducts(Pageable pageable) {
        return ResponseEntity.ok().body(productService.getAllProducts());
    }

    @GetMapping(value = "/laptops", produces = "application/json")
    public ResponseEntity<ProductsDto<Laptop>> getAllLaptops(Pageable pageable,
                                                             @QuerydslPredicate(root = Laptop.class) Predicate predicate) {

//        Page<Laptop> laptops = productService.getAllLaptops(predicate, pageable);
//        //Page<Laptop> laptops = productService.findAllLaptops(predicate, pageable);
//        System.out.println(filterTypeRepository.findAll());

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

    // Get product by id

//    @GetMapping(value = "/processors/{id}", produces = "application/json")
//    public ResponseEntity<Processor> getProcessor(@PathVariable Long id) {
//        Processor processor = productService.getProcessorById(id);
//        return ResponseEntity.ok().body(processor);
//    }
//
//    @GetMapping(value = "/motherboards/{id}", produces = "application/json")
//    public ResponseEntity<Motherboard> getMotherboard(@PathVariable Long id) {
//        return ResponseEntity.ok(productService.getMotherboardById(id));
//    }
//
//    @GetMapping(value = "/cases/{id}", produces = "application/json")
//    public ResponseEntity<Case> getCase(@PathVariable Long id) {
//        return ResponseEntity.ok(productService.getCaseById(id));
//    }
//
//    @GetMapping(value = "/rams/{id}", produces = "application/json")
//    public ResponseEntity<Ram> getRamMemory(@PathVariable Long id) {
//        return ResponseEntity.ok(productService.getRamById(id));
//    }
//
//    @GetMapping(value = "/mouses/{id}", produces = "application/json")
//    public ResponseEntity<Mouse> getMouse(@PathVariable Long id) {
//        return ResponseEntity.ok(productService.getMouseById(id));
//    }
//
//    @GetMapping(value = "/keyboards/{id}", produces = "application/json")
//    public ResponseEntity<Keyboard> getKeyboard(@PathVariable Long id) {
//        return ResponseEntity.ok(productService.getKeyboardById(id));
//    }
//
//    @GetMapping(value = "/monitors/{id}", produces = "application/json")
//    public ResponseEntity<Monitor> getMonitor(@PathVariable Long id) {
//        return ResponseEntity.ok(productService.getMonitorById(id));
//    }
//
//    @GetMapping(value = "/hard-discs/{id}", produces = "application/json")
//    public ResponseEntity<HardDisc> getHardDrive(@PathVariable Long id) {
//        return ResponseEntity.ok(productService.getHardDiscById(id));
//    }
//
//    @GetMapping(value = "/graphics/{id}", produces = "application/json")
//    public ResponseEntity<GraphicCard> getGraphicCard(@PathVariable Long id) {
//        return ResponseEntity.ok(productService.getGraphicCardById(id));
//    }
//
//    @GetMapping(value = "/laptops/{id}", produces = "application/json")
//    public ResponseEntity<Laptop> getLaptop(@PathVariable Long id) {
//        return ResponseEntity.ok(productService.getLaptopById(id));
//    }
//
//    @GetMapping(value = "/computers/{id}", produces = "application/json")
//    public ResponseEntity<Computer> getComputer(@PathVariable Long id) {
//        return ResponseEntity.ok(productService.getComputerById(id));
//    }

    @GetMapping(value = "/categories")
    public ResponseEntity<List<Category>> getCategories() {
        return ResponseEntity.ok(categoryService.getAllCategories());
    }
}
