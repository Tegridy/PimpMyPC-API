package com.pimpmypc.api.user;

import java.util.Optional;

public interface UserService {
    User saveUser(final User user);

    boolean userAlreadyExist(final String username);

    Optional<User> findByUsername(final String username);

}

