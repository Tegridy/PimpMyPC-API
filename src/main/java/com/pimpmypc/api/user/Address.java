package com.pimpmypc.api.user;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.pimpmypc.api.utils.BaseEntity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Entity;
import javax.persistence.OneToOne;

@Entity(name = "addresses")
@Getter
@Setter
@ToString
public class Address extends BaseEntity {

    private String street;
    private String city;
    private String state;
    private String zip;

    @OneToOne(mappedBy = "address")
    @JsonIgnore
    private User user;
}
