package com.pimpmypc.api.product;

import com.pimpmypc.api.category.CategoryRepository;
import com.pimpmypc.api.product.dto.ProductDto;
import com.pimpmypc.api.products.*;
import com.pimpmypc.api.products.dto.BaseDto;
import com.pimpmypc.api.products.mappers.ProductsMapper;
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
    private final HardDriveRepository hardDriveRepository;
    private final GraphicCardRepository graphicCardRepository;
    private final MonitorRepository monitorRepository;
    private final SmartphoneRepository smartphoneRepository;
    private final CategoryRepository categoryRepository;
    private final FiltersRepository filterTypeRepository;
    private final ProductRepository<Product> productRepository;
    private final Logger logger = LoggerFactory.getLogger(ProductServiceImpl.class);
    private final ProductsMapper productsMapper;

    @Override
    public ProductsDto2<ProductDto> getAllProcessors(Predicate predicate, Pageable pageable) {
        Page<ProductDto> processors = processorRepository.findAllProcessors(predicate, pageable)
                .map(proc -> ProductDto.builder().id(proc.getId()).price(proc.getPrice()).title(proc.getTitle()).imageUrl(proc.getImageUrl()).build());
        long x = categoryRepository.findByName("Processors").getId();

        // Page<ProcessorDto> l = processors.map(productsMapper::processorToProcessorDto);


        return smth3(processors, x);
    }

    private ProductsDto2 smth3(Page<ProductDto> listt, long x) {

        Set<FilterType> filters = filterTypeRepository.findFiltersCategoriesById(x);

        ProductsDto2<ProductDto> laptopsResponse = new ProductsDto2<>();
        laptopsResponse.setProducts(listt);
        laptopsResponse.setFilters(filters);

        return laptopsResponse;
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
    public ProductsDto<HardDrive> getAllHardDiscs(Predicate predicate, Pageable pageable) {
        Page<HardDrive> hardDiscs = hardDriveRepository.findAllHardDiscs(predicate, pageable);
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

    private <T extends BaseDto> ProductsDto2<T> smth2(Page<T> listt, long x) {

        Set<FilterType> filters = filterTypeRepository.findFiltersCategoriesById(x);

        ProductsDto2<T> laptopsResponse = new ProductsDto2<>();
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
        // TODO: Check product quantity if q < 0 throw error


        return productRepository.findProductById(id);
    }
}
