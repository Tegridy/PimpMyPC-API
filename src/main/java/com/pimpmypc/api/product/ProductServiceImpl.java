package com.pimpmypc.api.product;

import com.pimpmypc.api.category.CategoryRepository;
import com.pimpmypc.api.products.*;
import com.querydsl.core.types.Predicate;
import lombok.AllArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;


@Service
@AllArgsConstructor
public class ProductServiceImpl implements ProductService {

    private final LaptopRepository laptopRepository;
    private final ComputerRepository computerRepository;
    private final ProcessorRepository processorRepository;
    private final RamRepository ramRepository;
    private final MotherboardRepository motherboardRepository;
    private final PowerSupplyRepository powerSupplyRepository;
    private final CaseRepository caseRepository;
    private final MouseRepository mouseRepository;
    private final KeyboardRepository keyboardRepository;
    private final HardDiscRepository hardDiscRepository;
    private final GraphicCardRepository graphicCardRepository;
    private final MonitorRepository monitorRepository;
    private final SmartphoneRepository smartphoneRepository;
    private final CategoryRepository categoryRepository;
    private final FiltersRepository filterTypeRepository;
    private final ProductRepository<Product> productRepository;
    private final Logger logger = LoggerFactory.getLogger(ProductServiceImpl.class);


    @Override
    public ProductsDto<Processor> getAllProcessors(Predicate predicate, Pageable pageable) {
        Page<Processor> processors = processorRepository.findAllProcessors(predicate, pageable);
        long x = categoryRepository.findByName("Processors").getId();

        return smth(processors, x);
    }

    @Override
    public ProductsDto<Motherboard> getAllMotherboards(Predicate predicate, Pageable pageable) {
        Page<Motherboard> motherboards = motherboardRepository.findAllMotherboards(predicate, pageable);
        long x = categoryRepository.findByName("Motherboards").getId();

        return smth(motherboards, x);
    }

    @Override
    public ProductsDto<Case> getAllCases(Predicate predicate, Pageable pageable) {
        Page<Case> cases = caseRepository.findAllCases(predicate, pageable);
        long x = categoryRepository.findByName("Cases").getId();

        return smth(cases, x);
    }

    @Override
    public ProductsDto<Ram> getAllRamMemory(Predicate predicate, Pageable pageable) {
        Page<Ram> rams = ramRepository.findAllRams(predicate, pageable);
        long x = categoryRepository.findByName("Memory RAM").getId();

        return smth(rams, x);
    }

    @Override
    public ProductsDto<Mouse> getAllMouses(Predicate predicate, Pageable pageable) {
        Page<Mouse> mice = mouseRepository.findAllMouses(predicate, pageable);
        long x = categoryRepository.findByName("Computer mouses").getId();

        return smth(mice, x);
    }

    @Override
    public ProductsDto<Keyboard> getAllKeyboards(Predicate predicate, Pageable pageable) {
        Page<Keyboard> keyboards = keyboardRepository.findAllKeyboards(predicate, pageable);
        long x = categoryRepository.findByName("Computer keyboards").getId();

        return smth(keyboards, x);
    }

    @Override
    public ProductsDto<Monitor> getAllMonitors(Predicate predicate, Pageable pageable) {
        Page<Monitor> monitors = monitorRepository.findAllMonitors(predicate, pageable);
        long x = categoryRepository.findByName("Monitors").getId();

        return smth(monitors, x);
    }

    @Override
    public ProductsDto<HardDisc> getAllHardDiscs(Predicate predicate, Pageable pageable) {
        Page<HardDisc> hardDiscs = hardDiscRepository.findAllHardDiscs(predicate, pageable);
        long x = categoryRepository.findByName("Hard discs").getId();

        return smth(hardDiscs, x);
    }

    @Override
    public ProductsDto<GraphicCard> getAllGraphicCards(Predicate predicate, Pageable pageable) {
        Page<GraphicCard> graphicCards = graphicCardRepository.findAllGraphicCards(predicate, pageable);
        long x = categoryRepository.findByName("Graphic cards").getId();

        return smth(graphicCards, x);
    }

    @Override
    public ProductsDto<PowerSupply> getAllPowerSupplies(Predicate predicate, Pageable pageable) {
        Page<PowerSupply> powerSupplies = powerSupplyRepository.findAllPowerSupplies(predicate, pageable);
        long x = categoryRepository.findByName("Power supply").getId();

        return smth(powerSupplies, x);
    }

    @Override
    public ProductsDto<Smartphone> getAllSmartphones(Predicate predicate, Pageable pageable) {
        Page<Smartphone> smartphones = smartphoneRepository.findAllSmartphones(predicate, pageable);
        long x = categoryRepository.findByName("Smartphones").getId();

        return smth(smartphones, x);
    }

    private <T extends Product> ProductsDto<T> smth(Page<T> listt, long x) {

        Set<FilterType> filters = filterTypeRepository.findFiltersCategoriesById(x);

        ProductsDto<T> laptopsResponse = new ProductsDto<>();
        laptopsResponse.setProducts(listt);
        laptopsResponse.setFilters(filters);

        return laptopsResponse;
    }

    @Override
    public List<Product> getAllProducts() {
        //return productRepository.findAll();
        return null;
    }

    @Override
    public Product getProductById(long id) {
//        return productRepository.findById(id).orElseThrow(() -> {
//            logger.warn("Product with id " + id + " not found.");
//            throw new ProductException("Product with id " + id + " not found.");
//        });
        return null;
    }

    @Override
    public ProductsDto<Laptop> getAllLaptops(Predicate predicate, Pageable pageable) {

        Page<Laptop> laptops = laptopRepository.findAllLaptops(predicate, pageable);
        long x = categoryRepository.findByName("Laptops").getId();
//
//
//        Set<FilterType> filters = filterTypeRepository.findFiltersCategoriesById(x);
//
//        ProductsDto<Laptop> laptopsResponse = new ProductsDto<>();
//        laptopsResponse.setProducts(laptops);
//        laptopsResponse.setFilters(filters);

        return smth(laptops, x);
    }

    @Override
    public ProductsDto<Computer> getAllComputers(Predicate predicate, Pageable pageable) {

        Page<Computer> computers = computerRepository.findAllComputers(predicate, pageable);
        long x = categoryRepository.findByName("Computers").getId();


        Set<FilterType> filters = filterTypeRepository.findFiltersCategoriesById(x);

        ProductsDto<Computer> computersResponse = new ProductsDto<>();
        computersResponse.setProducts(computers);
        computersResponse.setFilters(filters);

        return computersResponse;
    }

//    @Override
//    public Processor getProcessorById(Long id) {
//        return productRepository.findProcessorById(id)
//                .orElseThrow(() -> {
//                    logger.warn("Processor with id: " + id + " not found.");
//                    throw new ProductException("Processor with id: " + id + " not found.");
//                });
//    }
//
//    @Override
//    public Motherboard getMotherboardById(Long id) {
//        return productRepository.findMotherboardById(id).orElseThrow(() -> {
//            logger.warn("Motherboard with id: " + id + " not found.");
//            throw new ProductException("Motherboard with id: " + id + " not found.");
//        });
//    }
//
//    @Override
//    public Case getCaseById(Long id) {
//        return productRepository.findCasedById(id).orElseThrow(() -> {
//            logger.warn("Case with id: " + id + " not found.");
//            throw new ProductException("Case with id: " + id + " not found.");
//        });
//    }
//
//    @Override
//    public Ram getRamById(Long id) {
//        return productRepository.findRamById(id).orElseThrow(() -> {
//            logger.warn("Ram with id: " + id + " not found.");
//            throw new ProductException("Ram with id: " + id + " not found.");
//        });
//    }
//
//    @Override
//    public Mouse getMouseById(Long id) {
//        return productRepository.findMousedById(id).orElseThrow(() -> {
//            logger.warn("Mouse with id: " + id + " not found.");
//            throw new ProductException("Mouse with id: " + id + " not found.");
//        });
//    }
//
//    @Override
//    public Keyboard getKeyboardById(Long id) {
//        return productRepository.findKeyboardById(id).orElseThrow(() -> {
//            logger.warn("Keyboard with id: " + id + " not found.");
//            throw new ProductException("Keyboard with id: " + id + " not found.");
//        });
//    }
//
//    @Override
//    public Monitor getMonitorById(Long id) {
//        return productRepository.findMonitorById(id).orElseThrow(() -> {
//            logger.warn("Monitor with id: " + id + " not found.");
//            throw new ProductException("Monitor with id: " + id + " not found.");
//        });
//    }
//
//    @Override
//    public HardDisc getHardDiscById(Long id) {
//        return productRepository.findHardDiscById(id).orElseThrow(() -> {
//            logger.warn("Hard disc with id: " + id + " not found.");
//            throw new ProductException("Hard disc with id: " + id + " not found.");
//        });
//    }
//
//    @Override
//    public GraphicCard getGraphicCardById(Long id) {
//        return productRepository.findGraphicCardById(id).orElseThrow(() -> {
//            logger.warn("Graphic card with id: " + id + " not found.");
//            throw new ProductException("Graphic card with id: " + id + " not found.");
//        });
//    }
//
//    @Override
//    public Laptop getLaptopById(Long id) {
//        return productRepository.findLaptopById(id).orElseThrow(() -> {
//            logger.warn("Laptop with id: " + id + " not found.");
//            throw new ProductException("Laptop with id: " + id + " not found.");
//        });
//    }
//
//    @Override
//    public Computer getComputerById(Long id) {
//        return productRepository.findComputerById(id).orElseThrow(() -> {
//            logger.warn("Computer with id: " + id + " not found.");
//            throw new ProductException("Computer with id: " + id + " not found.");
//        });
//    }


    @Override
    public Page<Product> findProductByName(String productName, Pageable pageable) {
        return productRepository.findProductsByName(productName, pageable);
    }

    @Override
    public Page<Product> findProductsByNameAndCategory(String productName, String productCategory, Pageable pageable) {
//        List<Tuple> lst = productRepository.findProductsByNameAndCategory(productName, productCategory);
//
//        return lst.stream().map(product ->
//                new SearchProductDto(
//                        product.get(0, Long.class),
//                        product.get(1, String.class),
//                        product.get(2, String.class),
//                        product.get(3, BigDecimal.class)
//                )).toList();
        return productRepository.findProductsByNameAndCategory(productName, productCategory, pageable);
    }

    @Override
    public List<Product> getOurChoiceProducts() {
        return productRepository.findOurChoice();
    }

    @Override
    public List<Product> getBestsellers() {
        return productRepository.findBestsellers();
    }

    @Override
    public Product getNewestProduct() {
        return productRepository.findNewestProduct();
    }

    @Override
    public Product findProductById(Long id) {
        return productRepository.findProductById(id);
    }
}
