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
        Page<Processor> processorPage = processorRepository.findAllProcessors(predicate, pageable);

        Page<ProductDto> processors = new PageImpl<ProductDto>(processorPage
                .getContent().stream().takeWhile(product -> product.getQuantity() > 0)
                .map(this::mapToDto).toList(), pageable, processorPage.getTotalElements());

        return createResponse(processors, "Processors");
    }

    private ProductDto mapToDto(Product product) {
        return ProductDto.builder().id(product.getId()).price(product.getPrice())
                .title(product.getTitle()).imageUrl(product.getImageUrl()).build();
    }

    @Override
    public ProductsResponse getAllMotherboards(Predicate predicate, Pageable pageable) {
        Page<Motherboard> motherboardPage = motherboardRepository.findAllMotherboards(predicate, pageable);

        Page<ProductDto> motherboards = new PageImpl<ProductDto>(motherboardPage
                .getContent().stream().takeWhile(product -> product.getQuantity() > 0)
                .map(this::mapToDto).toList(), pageable, motherboardPage.getTotalElements());

        return createResponse(motherboards, "Motherboards");
    }

    @Override
    public ProductsResponse getAllCases(Predicate predicate, Pageable pageable) {
        Page<Case> casePage = caseRepository.findAllCases(predicate, pageable);

        Page<ProductDto> cases = new PageImpl<ProductDto>(casePage
                .getContent().stream().takeWhile(product -> product.getQuantity() > 0)
                .map(this::mapToDto).toList(), pageable, casePage.getTotalElements());

        return createResponse(cases, "Cases");
    }

    @Override
    public ProductsResponse getAllRamMemory(Predicate predicate, Pageable pageable) {
        Page<Ram> ramPage = ramRepository.findAllRams(predicate, pageable);

        Page<ProductDto> rams = new PageImpl<ProductDto>(ramPage
                .getContent().stream().takeWhile(product -> product.getQuantity() > 0)
                .map(this::mapToDto).toList(), pageable, ramPage.getTotalElements());

        return createResponse(rams, "Memory RAM");
    }

    @Override
    public ProductsResponse getAllMouses(Predicate predicate, Pageable pageable) {
        Page<Mouse> mousePage = mouseRepository.findAllMouses(predicate, pageable);

        Page<ProductDto> mice = new PageImpl<ProductDto>(mousePage
                .getContent().stream().takeWhile(product -> product.getQuantity() > 0)
                .map(this::mapToDto).toList(), pageable, mousePage.getTotalElements());

        return createResponse(mice, "Computer mouses");
    }

    @Override
    public ProductsResponse getAllKeyboards(Predicate predicate, Pageable pageable) {
        Page<Keyboard> keyboardPage = keyboardRepository.findAllKeyboards(predicate, pageable);

        Page<ProductDto> keyboards = new PageImpl<ProductDto>(keyboardPage
                .getContent().stream().takeWhile(product -> product.getQuantity() > 0)
                .map(this::mapToDto).toList(), pageable, keyboardPage.getTotalElements());

        return createResponse(keyboards, "Computer keyboards");
    }

    @Override
    public ProductsResponse getAllMonitors(Predicate predicate, Pageable pageable) {
        Page<Monitor> monitorPage = monitorRepository.findAllMonitors(predicate, pageable);

        Page<ProductDto> monitors = new PageImpl<ProductDto>(monitorPage
                .getContent().stream().takeWhile(product -> product.getQuantity() > 0)
                .map(this::mapToDto).toList(), pageable, monitorPage.getTotalElements());

        return createResponse(monitors, "Monitors");
    }

    @Override
    public ProductsResponse getAllHardDrives(Predicate predicate, Pageable pageable) {
        Page<HardDrive> drivePage = hardDriveRepository.findAllHardDrives(predicate, pageable);

        Page<ProductDto> hardDiscs = new PageImpl<ProductDto>(drivePage
                .getContent().stream().takeWhile(product -> product.getQuantity() > 0)
                .map(this::mapToDto).toList(), pageable, drivePage.getTotalElements());

        return createResponse(hardDiscs, "Hard drives");
    }

    @Override
    public ProductsResponse getAllGraphicCards(Predicate predicate, Pageable pageable) {
        Page<GraphicCard> graphicCardPage = graphicCardRepository.findAllGraphicCards(predicate, pageable);

        Page<ProductDto> graphicCards = new PageImpl<ProductDto>(graphicCardPage
                .getContent().stream().takeWhile(product -> product.getQuantity() > 0)
                .map(this::mapToDto).toList(), pageable, graphicCardPage.getTotalElements());

        return createResponse(graphicCards, "Graphic cards");
    }

    @Override
    public ProductsResponse getAllPowerSupplies(Predicate predicate, Pageable pageable) {
        Page<PowerSupply> powerSupplyPage = powerSupplyRepository.findAllPowerSupplies(predicate, pageable);

        Page<ProductDto> powerSupplies = new PageImpl<ProductDto>(powerSupplyPage
                .getContent().stream().takeWhile(product -> product.getQuantity() > 0)
                .map(this::mapToDto).toList(), pageable, powerSupplyPage.getTotalElements());

        return createResponse(powerSupplies, "Power supply");
    }

    @Override
    public ProductsResponse getAllSmartphones(Predicate predicate, Pageable pageable) {
        Page<Smartphone> smartphonePage = smartphoneRepository.findAllSmartphones(predicate, pageable);

        Page<ProductDto> smartphones = new PageImpl<ProductDto>(smartphonePage
                .getContent().stream().takeWhile(product -> product.getQuantity() > 0)
                .map(this::mapToDto).toList(), pageable, smartphonePage.getTotalElements());

        return createResponse(smartphones, "Smartphones");
    }

    @Override
    public ProductsResponse getAllLaptops(Predicate predicate, Pageable pageable) {
        Page<Laptop> laptopsPage = laptopRepository.findAllLaptops(predicate, pageable);

        Page<ProductDto> laptops = new PageImpl<ProductDto>(laptopsPage
                .getContent().stream().takeWhile(product -> product.getQuantity() > 0)
                .map(this::mapToDto).toList(), pageable, laptopsPage.getTotalElements());

        return createResponse(laptops, "Laptops");
    }

    @Override
    public ProductsResponse getAllComputers(Predicate predicate, Pageable pageable) {
        Page<Computer> computersPage = computerRepository.findAllComputers(predicate, pageable);

        Page<ProductDto> productDtoPage = new PageImpl<ProductDto>(computersPage.getContent()
                .stream().takeWhile(product -> product.getQuantity() > 0)
                .map(this::mapToDto).toList(), pageable, computersPage.getTotalElements());

        return createResponse(productDtoPage, "Computers");
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
