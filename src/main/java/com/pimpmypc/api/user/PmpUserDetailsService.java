package com.pimpmypc.api.user;

import com.pimpmypc.api.exception.UserNotFoundException;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Component;

@Component
public class PmpUserDetailsService implements UserDetailsService {

    private final UserRepository userRepository;

    public PmpUserDetailsService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public org.springframework.security.core.userdetails.UserDetails loadUserByUsername(String s) {

        final User user = userRepository.findByUsername(s).orElseThrow(() -> new UserNotFoundException("User " + s + " not found."));

        return org.springframework.security.core.userdetails.User
                .withUsername(user.getUsername())
                .password(user.getPassword())
                .authorities(user.getRoles())
                .accountExpired(false)
                .accountLocked(false)
                .credentialsExpired(false)
                .disabled(false)
                .build();
    }
}
