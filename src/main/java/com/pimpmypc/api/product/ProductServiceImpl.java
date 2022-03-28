package com.pimpmypc.api.product;

import com.pimpmypc.api.category.CategoryRepository;
import com.pimpmypc.api.exception.CategoryNotFoundException;
import com.pimpmypc.api.exception.ProductNotFoundException;
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

        ProductsResponse response = new ProductsResponse();
        response.setProducts(productsPage);
        response.setFilters(filters);

        return response;
    }

    @Override
    public ProductsResponse getAllProcessors(Predicate predicate, Pageable pageable) {
        Page<ProductDto> processors = new PageImpl<ProductDto>(processorRepository.findAllProcessors(predicate, pageable)
                .getContent().stream().takeWhile(product -> product.getQuantity() > 0).map(this::mapToDto).toList());

        return createResponse(processors, "Processors");
    }

    private ProductDto mapToDto(Product product) {
        return ProductDto.builder().id(product.getId()).price(product.getPrice())
                .title(product.getTitle()).imageUrl(product.getImageUrl()).build();
    }

    @Override
    public ProductsResponse getAllMotherboards(Predicate predicate, Pageable pageable) {
        Page<ProductDto> motherboards = new PageImpl<ProductDto>(motherboardRepository.findAllMotherboards(predicate, pageable)
                .getContent().stream().takeWhile(product -> product.getQuantity() > 0).map(this::mapToDto).toList());

        return createResponse(motherboards, "Motherboards");
    }

    @Override
    public ProductsResponse getAllCases(Predicate predicate, Pageable pageable) {
        Page<ProductDto> cases = new PageImpl<ProductDto>(caseRepository.findAllCases(predicate, pageable).getContent()
                .stream().takeWhile(product -> product.getQuantity() > 0).map(this::mapToDto).toList());

        return createResponse(cases, "Cases");
    }

    @Override
    public ProductsResponse getAllRamMemory(Predicate predicate, Pageable pageable) {
        Page<ProductDto> rams = new PageImpl<ProductDto>(ramRepository.findAllRams(predicate, pageable).getContent()
                .stream().takeWhile(product -> product.getQuantity() > 0).map(this::mapToDto).toList());

        return createResponse(rams, "Memory RAM");
    }

    @Override
    public ProductsResponse getAllMouses(Predicate predicate, Pageable pageable) {
        Page<ProductDto> mice = new PageImpl<ProductDto>(mouseRepository.findAllMouses(predicate, pageable).getContent()
                .stream().takeWhile(product -> product.getQuantity() > 0).map(this::mapToDto).toList());

        return createResponse(mice, "Computer mouses");
    }

    @Override
    public ProductsResponse getAllKeyboards(Predicate predicate, Pageable pageable) {
        Page<ProductDto> keyboards = new PageImpl<ProductDto>(keyboardRepository.findAllKeyboards(predicate, pageable).getContent()
                .stream().takeWhile(product -> product.getQuantity() > 0).map(this::mapToDto).toList());

        return createResponse(keyboards, "Computer keyboards");
    }

    @Override
    public ProductsResponse getAllMonitors(Predicate predicate, Pageable pageable) {
        Page<ProductDto> monitors = new PageImpl<ProductDto>(monitorRepository.findAllMonitors(predicate, pageable).getContent()
                .stream().takeWhile(product -> product.getQuantity() > 0).map(this::mapToDto).toList());

        return createResponse(monitors, "Monitors");
    }

    @Override
    public ProductsResponse getAllHardDiscs(Predicate predicate, Pageable pageable) {
        Page<ProductDto> hardDiscs = new PageImpl<ProductDto>(hardDriveRepository.findAllHardDiscs(predicate, pageable).getContent()
                .stream().takeWhile(product -> product.getQuantity() > 0).map(this::mapToDto).toList());

        return createResponse(hardDiscs, "Hard discs");
    }

    @Override
    public ProductsResponse getAllGraphicCards(Predicate predicate, Pageable pageable) {
        Page<ProductDto> graphicCards = new PageImpl<ProductDto>(graphicCardRepository.findAllGraphicCards(predicate, pageable).getContent()
                .stream().takeWhile(product -> product.getQuantity() > 0).map(this::mapToDto).toList());

        return createResponse(graphicCards, "Graphic cards");
    }

    @Override
    public ProductsResponse getAllPowerSupplies(Predicate predicate, Pageable pageable) {
        Page<ProductDto> powerSupplies = new PageImpl<ProductDto>(powerSupplyRepository.findAllPowerSupplies(predicate, pageable).getContent()
                .stream().takeWhile(product -> product.getQuantity() > 0).map(this::mapToDto).toList());

        return createResponse(powerSupplies, "Power supply");
    }

    @Override
    public ProductsResponse getAllSmartphones(Predicate predicate, Pageable pageable) {
        Page<ProductDto> smartphones = new PageImpl<ProductDto>(smartphoneRepository.findAllSmartphones(predicate, pageable).getContent()
                .stream().takeWhile(product -> product.getQuantity() > 0).map(this::mapToDto).toList());

        return createResponse(smartphones, "Smartphones");
    }

    @Override
    public ProductsResponse getAllLaptops(Predicate predicate, Pageable pageable) {
        Page<ProductDto> laptops = new PageImpl<ProductDto>(laptopRepository.findAllLaptops(predicate, pageable).getContent()
                .stream().takeWhile(product -> product.getQuantity() > 0).map(this::mapToDto).toList());

        return createResponse(laptops, "Laptops");
    }

    @Override
    public ProductsResponse getAllComputers(Predicate predicate, Pageable pageable) {
        Page<ProductDto> computers = new PageImpl<ProductDto>(computerRepository.findAllComputers(predicate, pageable).getContent()
                .stream().takeWhile(product -> product.getQuantity() > 0).map(this::mapToDto).toList());

        return createResponse(computers, "Computers");
    }


    @Override
    public Page<ProductDto> findProductsByName(String productName, Pageable pageable) {
        List<ProductDto> productsDtos = productRepository.findProductsByName(productName, pageable)
                .stream().map(this::mapToDto).toList();
        return new PageImpl<ProductDto>(productsDtos);
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
        return productRepository.findProductById(id)
                .orElseThrow(() -> new ProductNotFoundException("Product with id: " + id + " not found"));
    }
}
