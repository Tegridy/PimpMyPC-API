package com.pimpmypc.api.product;

import com.pimpmypc.api.category.CategoryRepository;
import com.pimpmypc.api.exception.CategoryNotFoundException;
import com.pimpmypc.api.filters.FilterType;
import com.pimpmypc.api.filters.FiltersRepository;
import com.pimpmypc.api.product.dto.ProductDto;
import com.pimpmypc.api.products.*;
import com.querydsl.core.types.Predicate;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;


@Service
@AllArgsConstructor
@Slf4j
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
    private final ProductRepository productRepository;

    private ProductsResponse createResponse(Page<ProductDto> productsPage, String categoryName) {

        long categoryId = categoryRepository.findByName(categoryName)
                .orElseThrow(() -> new CategoryNotFoundException("Category with given name not found")).getId();

        Set<FilterType> filters = filterTypeRepository.findFiltersCategoriesById(categoryId);

        ProductsResponse laptopsResponse = new ProductsResponse();
        laptopsResponse.setProducts(productsPage);
        laptopsResponse.setFilters(filters);

        return laptopsResponse;
    }

    @Override
    public ProductsResponse getAllProcessors(Predicate predicate, Pageable pageable) {
        Page<ProductDto> processors = processorRepository.findAllProcessors(predicate, pageable)
                .map(this::mapToDto);

        return createResponse(processors, "Processors");
    }

    private ProductDto mapToDto(Product product) {
        return ProductDto.builder().id(product.getId()).price(product.getPrice())
                .title(product.getTitle()).imageUrl(product.getImageUrl()).build();
    }

    @Override
    public ProductsResponse getAllMotherboards(Predicate predicate, Pageable pageable) {
        Page<ProductDto> motherboards = motherboardRepository.findAllMotherboards(predicate, pageable).map(this::mapToDto);


        return createResponse(motherboards, "Motherboards");
    }

    @Override
    public ProductsResponse getAllCases(Predicate predicate, Pageable pageable) {
        Page<ProductDto> cases = caseRepository.findAllCases(predicate, pageable).map(this::mapToDto);

        return createResponse(cases, "Cases");
    }

    @Override
    public ProductsResponse getAllRamMemory(Predicate predicate, Pageable pageable) {
        Page<ProductDto> rams = ramRepository.findAllRams(predicate, pageable).map(this::mapToDto);

        return createResponse(rams, "Memory RAM");
    }

    @Override
    public ProductsResponse getAllMouses(Predicate predicate, Pageable pageable) {
        Page<ProductDto> mice = mouseRepository.findAllMouses(predicate, pageable).map(this::mapToDto);

        return createResponse(mice, "Computer mouses");
    }

    @Override
    public ProductsResponse getAllKeyboards(Predicate predicate, Pageable pageable) {
        Page<ProductDto> keyboards = keyboardRepository.findAllKeyboards(predicate, pageable).map(this::mapToDto);

        return createResponse(keyboards, "Computer keyboards");
    }

    @Override
    public ProductsResponse getAllMonitors(Predicate predicate, Pageable pageable) {
        Page<ProductDto> monitors = monitorRepository.findAllMonitors(predicate, pageable).map(this::mapToDto);

        return createResponse(monitors, "Monitors");
    }

    @Override
    public ProductsResponse getAllHardDiscs(Predicate predicate, Pageable pageable) {
        Page<ProductDto> hardDiscs = hardDriveRepository.findAllHardDiscs(predicate, pageable).map(this::mapToDto);

        return createResponse(hardDiscs, "Hard discs");
    }

    @Override
    public ProductsResponse getAllGraphicCards(Predicate predicate, Pageable pageable) {
        Page<ProductDto> graphicCards = graphicCardRepository.findAllGraphicCards(predicate, pageable).map(this::mapToDto);

        return createResponse(graphicCards, "Graphic cards");
    }

    @Override
    public ProductsResponse getAllPowerSupplies(Predicate predicate, Pageable pageable) {
        Page<ProductDto> powerSupplies = powerSupplyRepository.findAllPowerSupplies(predicate, pageable).map(this::mapToDto);

        return createResponse(powerSupplies, "Power supply");
    }

    @Override
    public ProductsResponse getAllSmartphones(Predicate predicate, Pageable pageable) {
        Page<ProductDto> smartphones = smartphoneRepository.findAllSmartphones(predicate, pageable).map(this::mapToDto);

        return createResponse(smartphones, "Smartphones");
    }

    @Override
    public ProductsResponse getAllLaptops(Predicate predicate, Pageable pageable) {
        Page<ProductDto> laptops = laptopRepository.findAllLaptops(predicate, pageable).map(this::mapToDto);

        return createResponse(laptops, "Laptops");
    }

    @Override
    public ProductsResponse getAllComputers(Predicate predicate, Pageable pageable) {
        Page<ProductDto> computers = computerRepository.findAllComputers(predicate, pageable).map(this::mapToDto);

        return createResponse(computers, "Computers");
    }


    @Override
    public Page<ProductDto> findProductsByName(String productName, Pageable pageable) {
        List<ProductDto> productsDtos = productRepository.findProductsByName(productName, pageable)
                .stream().map(this::mapToDto).toList();
        return new PageImpl<>(productsDtos);
    }

    @Override
    public Page<ProductDto> findProductsByNameAndCategory(String productName, String productCategory, Pageable pageable) {
        List<ProductDto> productsDtos = productRepository
                .findProductsByNameAndCategory(productName, productCategory, pageable)
                .stream().map(this::mapToDto).toList();

        return new PageImpl<>(productsDtos);
    }

    @Override
    public List<ProductDto> getOurChoiceProducts() {
        return productRepository.findOurChoice().stream().map(this::mapToDto).toList();
    }

    @Override
    public List<ProductDto> getBestsellers() {
        return productRepository.findBestsellers().stream().map(this::mapToDto).toList();
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
