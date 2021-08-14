//package com.pimpmypc.api.products;
//
//import com.pimpmypc.api.product.Product;
//
//import javax.persistence.*;
//import java.util.List;
//
//@Entity(name = "graphic_cards")
//public class GraphicCard extends Product {
//    private String chipset;
//    private int vram;
//    @Column(name = "core_clock")
//    private int coreClock;
//    @Column(name = "boost_clock")
//    private int boostClock;
//    @Enumerated(EnumType.STRING)
//    @ElementCollection(fetch = FetchType.EAGER)
//    @CollectionTable(name = "colors", joinColumns = @JoinColumn(name = "id"))
//    private List<Color> color;
//    @Column(name = "graphic_card_length")
//    private int length;
//}
