package com.pimpmypc.api.products;

import com.pimpmypc.api.product.Product;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.Set;

@Entity(name = "motherboards")
@Setter
@Getter
@ToString
public class Motherboard extends Product {

    @Enumerated(EnumType.STRING)
    @Column(name = "motherboard_socket")
    private MotherboardSocket motherboardSocket;
    @Enumerated(EnumType.STRING)
    @ElementCollection(fetch = FetchType.EAGER)
    @CollectionTable(name = "motherboard_formats", joinColumns = @JoinColumn(name = "id"))
    @Column(name = "format")
    private Set<MotherboardFormat> motherboardFormats;
    @Column(name = "ram_slots")
    private int ramSlots;
    @Column(name = "max_ram")
    private long maxRam;


    public void setMotherboardFormats(Set<MotherboardFormat> motherboardFormats) {
        this.motherboardFormats = motherboardFormats;
    }
}
