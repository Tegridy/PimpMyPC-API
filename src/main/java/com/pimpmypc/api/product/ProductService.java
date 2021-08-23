package com.pimpmypc.api.product;

import com.pimpmypc.api.products.*;

import java.util.List;

public interface ProductService {

    List<Product> getAllProducts();

    Product getProductById(long id);

    List<Processor> getAllProcessors();

    List<Motherboard> getAllMotherboards();

    List<Case> getAllCases();

    List<Ram> getAllRamMemory();

    List<Mouse> getAllMouses();

    List<Keyboard> getAllKeyboards();

    List<Monitor> getAllMonitors();

    List<HardDisc> getAllHardDiscs();

    List<GraphicCard> getAllGraphicCards();

    List<Laptop> getAllLaptops();

    List<Computer> getAllComputers();

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
