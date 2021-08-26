package com.pimpmypc.api.product;

import com.pimpmypc.api.products.*;

import java.util.List;

public interface ProductService {

    List<Product> getAllProducts();

    Product getProductById(long id);

    List<Processor> getAllProcessors(int page, int pageSize);

    List<Motherboard> getAllMotherboards(int page, int pageSize);

    List<Case> getAllCases(int page, int pageSize);

    List<Ram> getAllRamMemory(int page, int pageSize);

    List<Mouse> getAllMouses(int page, int pageSize);

    List<Keyboard> getAllKeyboards(int page, int pageSize);

    List<Monitor> getAllMonitors(int page, int pageSize);

    List<HardDisc> getAllHardDiscs(int page, int pageSize);

    List<GraphicCard> getAllGraphicCards(int page, int pageSize);

    List<Laptop> getAllLaptops(int page, int pageSize);

    List<Computer> getAllComputers(int page, int pageSize);

    Processor getProcessorById(Long id);

    Motherboard getMotherboardById(Long id);

    Case getCaseById(Long id);

    Ram getRamById(Long id);

    Mouse getMouseById(Long id);

    Keyboard getKeyboardById(Long id);

    Monitor getMonitorById(Long id);

    HardDisc getHardDiscById(Long id);

    GraphicCard getGraphicCardById(Long id);

    Laptop getLaptopById(Long id);

    Computer getComputerById(Long id);
}
