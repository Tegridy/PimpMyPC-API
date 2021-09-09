package com.pimpmypc.api.product;

import com.pimpmypc.api.products.Computer;
import com.pimpmypc.api.products.ComputerRepository;
import com.pimpmypc.api.products.Laptop;
import com.pimpmypc.api.products.LaptopRepository;
import com.querydsl.core.types.Predicate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class ProductServiceImpl implements ProductService {

    private final LaptopRepository laptopRepository;
    private final ComputerRepository computerRepository;
    private final Logger logger = LoggerFactory.getLogger(ProductServiceImpl.class);

    public ProductServiceImpl(LaptopRepository laptopRepository, ComputerRepository computerRepository) {
        this.laptopRepository = laptopRepository;
        this.computerRepository = computerRepository;
    }

    @Override
    public List<Product> getAllProducts() {
        //return productRepository.findAll();
        return null;
    }

    @Override
    public Product getProductById(long id) {
//        return productRepository.findById(id).orElseThrow(() -> {
//            logger.warn("Product with id " + id + " not found.");
//            throw new ProductException("Product with id " + id + " not found.");
//        });
        return null;
    }

//    @Override
//    public Page<Processor> getAllProcessors(int page, int pageSize) {
//        return productRepository.findAllProcessors(PageRequest.of(page, pageSize));
//    }
//
//    @Override
//    public Page<Motherboard> getAllMotherboards(int page, int pageSize) {
//        return productRepository.findAllMotherboards(PageRequest.of(page, pageSize));
//    }
//
//    @Override
//    public Page<Case> getAllCases(int page, int pageSize) {
//        return productRepository.findAllCases(PageRequest.of(page, pageSize));
//    }
//
//    @Override
//    public Page<Ram> getAllRamMemory(int page, int pageSize) {
//        return productRepository.findAllRamMemory(PageRequest.of(page, pageSize));
//    }
//
//    @Override
//    public Page<Mouse> getAllMouses(int page, int pageSize) {
//        return productRepository.findAllMouses(PageRequest.of(page, pageSize));
//    }
//
//    @Override
//    public Page<Keyboard> getAllKeyboards(int page, int pageSize) {
//        return productRepository.findAllKeyboards(PageRequest.of(page, pageSize));
//    }
//
//    @Override
//    public Page<Monitor> getAllMonitors(int page, int pageSize) {
//        return productRepository.findAllMonitors(PageRequest.of(page, pageSize));
//    }
//
//    @Override
//    public Page<HardDisc> getAllHardDiscs(int page, int pageSize) {
//        return productRepository.findAllHardDiscs(PageRequest.of(page, pageSize));
//    }
//
//    @Override
//    public Page<GraphicCard> getAllGraphicCards(int page, int pageSize) {
//        return productRepository.findAllGraphicCards(PageRequest.of(page, pageSize));
//    }

    @Override
    public Page<Laptop> getAllLaptops(Predicate predicate, Pageable pageable) {
        return laptopRepository.findAllLaptops(predicate, pageable);
    }


    @Override
    public Page<Computer> getAllComputers(Predicate predicate, Pageable pageable) {
        return computerRepository.findAllComputers(predicate, pageable);
    }

//    @Override
//    public Processor getProcessorById(Long id) {
//        return productRepository.findProcessorById(id)
//                .orElseThrow(() -> {
//                    logger.warn("Processor with id: " + id + " not found.");
//                    throw new ProductException("Processor with id: " + id + " not found.");
//                });
//    }
//
//    @Override
//    public Motherboard getMotherboardById(Long id) {
//        return productRepository.findMotherboardById(id).orElseThrow(() -> {
//            logger.warn("Motherboard with id: " + id + " not found.");
//            throw new ProductException("Motherboard with id: " + id + " not found.");
//        });
//    }
//
//    @Override
//    public Case getCaseById(Long id) {
//        return productRepository.findCasedById(id).orElseThrow(() -> {
//            logger.warn("Case with id: " + id + " not found.");
//            throw new ProductException("Case with id: " + id + " not found.");
//        });
//    }
//
//    @Override
//    public Ram getRamById(Long id) {
//        return productRepository.findRamById(id).orElseThrow(() -> {
//            logger.warn("Ram with id: " + id + " not found.");
//            throw new ProductException("Ram with id: " + id + " not found.");
//        });
//    }
//
//    @Override
//    public Mouse getMouseById(Long id) {
//        return productRepository.findMousedById(id).orElseThrow(() -> {
//            logger.warn("Mouse with id: " + id + " not found.");
//            throw new ProductException("Mouse with id: " + id + " not found.");
//        });
//    }
//
//    @Override
//    public Keyboard getKeyboardById(Long id) {
//        return productRepository.findKeyboardById(id).orElseThrow(() -> {
//            logger.warn("Keyboard with id: " + id + " not found.");
//            throw new ProductException("Keyboard with id: " + id + " not found.");
//        });
//    }
//
//    @Override
//    public Monitor getMonitorById(Long id) {
//        return productRepository.findMonitorById(id).orElseThrow(() -> {
//            logger.warn("Monitor with id: " + id + " not found.");
//            throw new ProductException("Monitor with id: " + id + " not found.");
//        });
//    }
//
//    @Override
//    public HardDisc getHardDiscById(Long id) {
//        return productRepository.findHardDiscById(id).orElseThrow(() -> {
//            logger.warn("Hard disc with id: " + id + " not found.");
//            throw new ProductException("Hard disc with id: " + id + " not found.");
//        });
//    }
//
//    @Override
//    public GraphicCard getGraphicCardById(Long id) {
//        return productRepository.findGraphicCardById(id).orElseThrow(() -> {
//            logger.warn("Graphic card with id: " + id + " not found.");
//            throw new ProductException("Graphic card with id: " + id + " not found.");
//        });
//    }
//
//    @Override
//    public Laptop getLaptopById(Long id) {
//        return productRepository.findLaptopById(id).orElseThrow(() -> {
//            logger.warn("Laptop with id: " + id + " not found.");
//            throw new ProductException("Laptop with id: " + id + " not found.");
//        });
//    }
//
//    @Override
//    public Computer getComputerById(Long id) {
//        return productRepository.findComputerById(id).orElseThrow(() -> {
//            logger.warn("Computer with id: " + id + " not found.");
//            throw new ProductException("Computer with id: " + id + " not found.");
//        });
//    }
}
