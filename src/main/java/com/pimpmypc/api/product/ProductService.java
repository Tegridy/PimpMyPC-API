package com.pimpmypc.api.product;

import com.pimpmypc.api.product.dto.ProductDto;
import com.querydsl.core.types.Predicate;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;


public interface ProductService {

    ProductsResponse getAllProcessors(Predicate predicate, Pageable pageable);

    ProductsResponse getAllMotherboards(Predicate predicate, Pageable pageable);

    ProductsResponse getAllCases(Predicate predicate, Pageable pageable);

    ProductsResponse getAllRamMemory(Predicate predicate, Pageable pageable);

    ProductsResponse getAllMouses(Predicate predicate, Pageable pageable);

    ProductsResponse getAllKeyboards(Predicate predicate, Pageable pageable);

    ProductsResponse getAllMonitors(Predicate predicate, Pageable pageable);

    ProductsResponse getAllHardDiscs(Predicate predicate, Pageable pageable);

    ProductsResponse getAllPowerSupplies(Predicate predicate, Pageable pageable);

    ProductsResponse getAllGraphicCards(Predicate predicate, Pageable pageable);

    ProductsResponse getAllLaptops(Predicate predicate, Pageable pageable);

    ProductsResponse getAllSmartphones(Predicate predicate, Pageable pageable);

    ProductsResponse getAllComputers(Predicate predicate, Pageable pageable);

    List<ProductDto> getBestsellers();

    List<ProductDto> getOurChoiceProducts();

    Product getNewestProduct();

    Product findProductById(Long id);

    Page<ProductDto> findProductsByName(String productName, Pageable pageable);

    Page<ProductDto> findProductsByNameAndCategory(String productName, String productCategory, Pageable pageable);
}
