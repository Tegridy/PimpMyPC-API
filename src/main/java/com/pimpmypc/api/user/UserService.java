package com.pimpmypc.api.user;

import com.pimpmypc.api.user.dto.UserAddressDto;
import com.pimpmypc.api.user.dto.UserAuthDto;
import com.pimpmypc.api.user.dto.UserPersonalDataDto;

import java.util.List;
import java.util.Optional;

public interface UserService {
    User getUserById(Long id);

    User saveUser(final User user);

    boolean userAlreadyExist(final String username);

    Optional<User> findByUsername(final String username);

    List<User> getAllUsers();

    User getUserAccountDetails(Long id);

    UserAddressDto updateUserAddressDetails(Long id, UserAddressDto user);

    UserPersonalDataDto updateUserPersonalDetails(Long id, UserPersonalDataDto user);

    UserAuthDto updateUserAuthDetails(Long id, String newPassword);
}

