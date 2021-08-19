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
}
