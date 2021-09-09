package com.pimpmypc.api.product;

import com.pimpmypc.api.products.Computer;
import com.pimpmypc.api.products.Laptop;
import com.querydsl.core.types.Predicate;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;


public interface ProductService {

    List<Product> getAllProducts();

    Product getProductById(long id);

//    Page<Processor> getAllProcessors(int page, int pageSize);
////
////    Page<Motherboard> getAllMotherboards(int page, int pageSize);
////
////    Page<Case> getAllCases(int page, int pageSize);
////
////    Page<Ram> getAllRamMemory(int page, int pageSize);
////
////    Page<Mouse> getAllMouses(int page, int pageSize);
////
////    Page<Keyboard> getAllKeyboards(int page, int pageSize);
////
////    Page<Monitor> getAllMonitors(int page, int pageSize);
////
////    Page<HardDisc> getAllHardDiscs(int page, int pageSize);
////
////    Page<GraphicCard> getAllGraphicCards(int page, int pageSize);

    Page<Laptop> getAllLaptops(Predicate predicate, Pageable pageable);

    Page<Computer> getAllComputers(Predicate predicate, Pageable pageable);

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
}
