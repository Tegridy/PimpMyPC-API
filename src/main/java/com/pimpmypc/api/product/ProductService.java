package com.pimpmypc.api.product;

import com.pimpmypc.api.products.Motherboard;
import com.pimpmypc.api.products.Processor;

import java.util.List;

public interface ProductService {

    List<Product> getAllProducts();

    Product getProductById(long id);

    List<Processor> getAllProcessors();

    List<Motherboard> getAllMotherboards();
}
