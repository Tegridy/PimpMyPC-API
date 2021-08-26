package com.pimpmypc.api.product;

import com.pimpmypc.api.exception.ProductException;
import com.pimpmypc.api.products.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.PageRequest;
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
    public List<Processor> getAllProcessors(int page, int pageSize) {
        return productRepository.findAllProcessors(PageRequest.of(page, pageSize));
    }

    @Override
    public List<Motherboard> getAllMotherboards(int page, int pageSize) {
        return productRepository.findAllMotherboards(PageRequest.of(page, pageSize));
    }

    @Override
    public List<Case> getAllCases(int page, int pageSize) {
        return productRepository.findAllCases(PageRequest.of(page, pageSize));
    }

    @Override
    public List<Ram> getAllRamMemory(int page, int pageSize) {
        return productRepository.findAllRamMemory(PageRequest.of(page, pageSize));
    }

    @Override
    public List<Mouse> getAllMouses(int page, int pageSize) {
        return productRepository.findAllMouses(PageRequest.of(page, pageSize));
    }

    @Override
    public List<Keyboard> getAllKeyboards(int page, int pageSize) {
        return productRepository.findAllKeyboards(PageRequest.of(page, pageSize));
    }

    @Override
    public List<Monitor> getAllMonitors(int page, int pageSize) {
        return productRepository.findAllMonitors(PageRequest.of(page, pageSize));
    }

    @Override
    public List<HardDisc> getAllHardDiscs(int page, int pageSize) {
        return productRepository.findAllHardDiscs(PageRequest.of(page, pageSize));
    }

    @Override
    public List<GraphicCard> getAllGraphicCards(int page, int pageSize) {
        return productRepository.findAllGraphicCards(PageRequest.of(page, pageSize));
    }

    @Override
    public List<Laptop> getAllLaptops(int page, int pageSize) {
        return productRepository.findAllLaptops(PageRequest.of(page, pageSize));
    }

    @Override
    public List<Computer> getAllComputers(int page, int pageSize) {
        return productRepository.findAllComputers(PageRequest.of(page, pageSize));
    }

    @Override
    public Processor getProcessorById(Long id) {
        return productRepository.findProcessorById(id)
                .orElseThrow(() -> {
                    logger.warn("Processor with id: " + id + " not found.");
                    throw new ProductException("Processor with id: " + id + " not found.");
                });
    }

    @Override
    public Motherboard getMotherboardById(Long id) {
        return productRepository.findMotherboardById(id).orElseThrow(() -> {
            logger.warn("Motherboard with id: " + id + " not found.");
            throw new ProductException("Motherboard with id: " + id + " not found.");
        });
    }

    @Override
    public Case getCaseById(Long id) {
        return productRepository.findCasedById(id).orElseThrow(() -> {
            logger.warn("Case with id: " + id + " not found.");
            throw new ProductException("Case with id: " + id + " not found.");
        });
    }

    @Override
    public Ram getRamById(Long id) {
        return productRepository.findRamById(id).orElseThrow(() -> {
            logger.warn("Ram with id: " + id + " not found.");
            throw new ProductException("Ram with id: " + id + " not found.");
        });
    }

    @Override
    public Mouse getMouseById(Long id) {
        return productRepository.findMousedById(id).orElseThrow(() -> {
            logger.warn("Mouse with id: " + id + " not found.");
            throw new ProductException("Mouse with id: " + id + " not found.");
        });
    }

    @Override
    public Keyboard getKeyboardById(Long id) {
        return productRepository.findKeyboardById(id).orElseThrow(() -> {
            logger.warn("Keyboard with id: " + id + " not found.");
            throw new ProductException("Keyboard with id: " + id + " not found.");
        });
    }

    @Override
    public Monitor getMonitorById(Long id) {
        return productRepository.findMonitorById(id).orElseThrow(() -> {
            logger.warn("Monitor with id: " + id + " not found.");
            throw new ProductException("Monitor with id: " + id + " not found.");
        });
    }

    @Override
    public HardDisc getHardDiscById(Long id) {
        return productRepository.findHardDiscById(id).orElseThrow(() -> {
            logger.warn("Hard disc with id: " + id + " not found.");
            throw new ProductException("Hard disc with id: " + id + " not found.");
        });
    }

    @Override
    public GraphicCard getGraphicCardById(Long id) {
        return productRepository.findGraphicCardById(id).orElseThrow(() -> {
            logger.warn("Graphic card with id: " + id + " not found.");
            throw new ProductException("Graphic card with id: " + id + " not found.");
        });
    }

    @Override
    public Laptop getLaptopById(Long id) {
        return productRepository.findLaptopById(id).orElseThrow(() -> {
            logger.warn("Laptop with id: " + id + " not found.");
            throw new ProductException("Laptop with id: " + id + " not found.");
        });
    }

    @Override
    public Computer getComputerById(Long id) {
        return productRepository.findComputerById(id).orElseThrow(() -> {
            logger.warn("Computer with id: " + id + " not found.");
            throw new ProductException("Computer with id: " + id + " not found.");
        });
    }
}
