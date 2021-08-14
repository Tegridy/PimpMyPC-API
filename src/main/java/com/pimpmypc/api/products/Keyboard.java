//package com.pimpmypc.api.products;
//
//import com.pimpmypc.api.product.Product;
//
//import javax.persistence.*;
//import java.util.List;
//
//@Entity(name = "keyboards")
//public class Keyboard extends Product {
//    private String style;
//    @Enumerated(EnumType.STRING)
//    @ElementCollection(fetch = FetchType.EAGER)
//    @CollectionTable(name = "colors", joinColumns = @JoinColumn(name = "id"))
//    private List<Color> colors;
//    private String connection;
//}
