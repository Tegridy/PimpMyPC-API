package com.pimpmypc.api.product;

import com.pimpmypc.api.exception.ProductException;
import com.pimpmypc.api.products.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    private final ProductRepository<Product> productRepository;
    private final Logger logger = LoggerFactory.getLogger(ProductServiceImpl.class);

    public ProductServiceImpl(ProductRepository<Product> productRepository) {
        this.productRepository = productRepository;
    }

    @Override
    public List<Product> getAllProducts() {
        return productRepository.findAll();
    }

    @Override
    public Product getProductById(long id) {
        return productRepository.findById(id).orElseThrow(() -> {
            logger.warn("Product with id " + id + " not found.");
            throw new ProductException("Product with id " + id + " not found.");
        });
    }

    @Override
    public List<Processor> getAllProcessors() {
        return productRepository.findAllProcessors();
    }

    @Override
    public List<Motherboard> getAllMotherboards() {
        return productRepository.findAllMotherboards();
    }

    @Override
    public List<Case> getAllCases() {
        return productRepository.findAllCases();
    }

    @Override
    public List<Ram> getAllRamMemory() {
        return productRepository.findAllRamMemory();
    }

    @Override
    public List<Mouse> getAllMouses() {
        return productRepository.findAllMouses();
    }

    @Override
    public List<Keyboard> getAllKeyboards() {
        return productRepository.findAllKeyboards();
    }

    @Override
    public List<Monitor> getAllMonitors() {
        return productRepository.findAllMonitors();
    }

    @Override
    public List<HardDrive> getAllHardDrives() {
        return productRepository.findAllHardDrives();
    }

    @Override
    public List<GraphicCard> getAllGraphicCards() {
        return productRepository.findAllGraphicCards();
    }

    @Override
    public List<Laptop> getAllLaptops() {
        return productRepository.findAllLaptops();
    }
}
