package com.pimpmypc.api.product;

import com.pimpmypc.api.products.*;
import com.querydsl.core.types.Predicate;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;


public interface ProductService {

    List<Product> getAllProducts();

    Product getProductById(long id);

    ProductsDto<Processor> getAllProcessors(Predicate predicate, Pageable pageable);

    ProductsDto<Motherboard> getAllMotherboards(Predicate predicate, Pageable pageable);

    ProductsDto<Case> getAllCases(Predicate predicate, Pageable pageable);

    ProductsDto<Ram> getAllRamMemory(Predicate predicate, Pageable pageable);

    ProductsDto<Mouse> getAllMouses(Predicate predicate, Pageable pageable);

    ProductsDto<Keyboard> getAllKeyboards(Predicate predicate, Pageable pageable);

    ProductsDto<Monitor> getAllMonitors(Predicate predicate, Pageable pageable);

    ProductsDto<HardDisc> getAllHardDiscs(Predicate predicate, Pageable pageable);

    ProductsDto<PowerSupply> getAllPowerSupplies(Predicate predicate, Pageable pageable);

    ProductsDto<GraphicCard> getAllGraphicCards(Predicate predicate, Pageable pageable);

    ProductsDto<Laptop> getAllLaptops(Predicate predicate, Pageable pageable);

    ProductsDto<Smartphone> getAllSmartphones(Predicate predicate, Pageable pageable);

    ProductsDto<Computer> getAllComputers(Predicate predicate, Pageable pageable);

    List<Product> getBestsellers();

    List<Product> getOurChoiceProducts();

    Product getNewestProduct();

    Product findProductById(Long id);

//    Processor getProcessorById(Long id);
//
//    Motherboard getMotherboardById(Long id);
//
//    Case getCaseById(Long id);
//
//    Ram getRamById(Long id);
//
//    Mouse getMouseById(Long id);
//
//    Keyboard getKeyboardById(Long id);
//
//    Monitor getMonitorById(Long id);
//
//    HardDisc getHardDiscById(Long id);
//
//    GraphicCard getGraphicCardById(Long id);
//
//    Laptop getLaptopById(Long id);
//
//    Computer getComputerById(Long id);

    Page<Product> findProductByName(String productName, Pageable pageable);

    Page<Product> findProductsByNameAndCategory(String productName, String productCategory, Pageable pageable);
}
