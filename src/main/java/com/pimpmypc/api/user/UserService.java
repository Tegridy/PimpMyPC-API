package com.pimpmypc.api.user;

import java.util.List;
import java.util.Optional;

public interface UserService {
    User getUserById(Long id);

    User saveUser(final User user);

    boolean userAlreadyExist(final String username);

    Optional<User> findByUsername(final String username);

    List<User> getAllUsers();

    User getUserAccountDetails(Long id);

}

