package com.pimpmypc.api.user;

import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;


public class PmpUserDetailsService implements UserDetailsService {

    private final UserRepository userRepository;

    public PmpUserDetailsService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public org.springframework.security.core.userdetails.UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
//        final User user = userRepository.findByUsername(s);
//
//        if (user == null) {
//            throw new UsernameNotFoundException("User '" + s + "' not found");
//        }
//
//        return org.springframework.security.core.userdetails.User//
//                .withUsername(user.getUsername())//
//                .password(user.getPassword())//
//                .authorities(user.getRoles())//
//                .accountExpired(false)//
//                .accountLocked(false)//
//                .credentialsExpired(false)//
//                .disabled(false)//
//                .build();
        return null;
    }
}
