package com.pimpmypc.api.user.address;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AddressRepository extends JpaRepository<Address, Long> {

    @Override
    List<Address> findAll();
}
