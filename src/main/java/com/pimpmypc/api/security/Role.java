package com.pimpmypc.api.security;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority {

    ROLE_USER,
    ROLE_EMPLOYEE,
    ROLE_ADMIN;

    public String getAuthority() {
        return name();
    }
}
