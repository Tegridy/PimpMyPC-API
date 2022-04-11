package com.pimpmypc.api.order;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.pimpmypc.api.product.Product;
import com.pimpmypc.api.user.User;
import com.pimpmypc.api.user.address.Address;
import com.pimpmypc.api.utils.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;

@Entity(name = "orders")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Order extends BaseEntity {

    @Column(name = "first_name")
    private String customerFirstName;
    @Column(name = "last_name")
    private String customerLastName;
    @Column(name = "order_status")
    @Enumerated(EnumType.STRING)
    private OrderStatus orderStatus;
    @Column(name = "customer_email")
    private String customerEmail;
    @Column(name = "customer_phone")
    private String customerPhone;
    @Column(name = "total_price")
    private BigDecimal totalPrice;
    @ManyToMany
    @JoinTable(name = "orders_products", joinColumns = @JoinColumn(name = "order_id"), inverseJoinColumns = @JoinColumn(name = "product_id"))
    private List<Product> products;
    @ManyToOne(fetch = FetchType.LAZY, cascade = {CascadeType.MERGE, CascadeType.PERSIST})
    private Address deliveryAddress;
    @ManyToOne
    @JsonIgnore
    private User user;

    public Order(String customerFirstName, String customerLastName, OrderStatus orderStatus, String customerEmail,
                 String customerPhone, BigDecimal totalPrice, List<Product> products, Address deliveryAddress) {
        this.customerFirstName = customerFirstName;
        this.customerLastName = customerLastName;
        this.orderStatus = orderStatus;
        this.customerEmail = customerEmail;
        this.customerPhone = customerPhone;
        this.totalPrice = totalPrice;
        this.products = products;
        this.deliveryAddress = deliveryAddress;
    }

    @Override
    public String toString() {
        return "Order{" +
                "customerFirstName='" + customerFirstName + '\'' +
                ", customerLastName='" + customerLastName + '\'' +
                '}';
    }
}
