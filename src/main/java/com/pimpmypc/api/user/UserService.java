package com.pimpmypc.api.user;

import com.pimpmypc.api.user.dto.UserAddressDto;
import com.pimpmypc.api.user.dto.UserAuthDto;

import java.util.List;
import java.util.Optional;

public interface UserService {
    User getUserById(Long id);

    User saveUser(final User user);

    boolean userAlreadyExist(final String username);

    Optional<User> findByUsername(final String username);

    List<User> getAllUsers();

    User getUserAccountDetails(Long id);

    void updateUserAddressDetails(Long id, UserAddressDto user);

    void updateUserPersonalDetails(Long id, User user);

    void updateUserAuthDetails(Long id, UserAuthDto user);
}

