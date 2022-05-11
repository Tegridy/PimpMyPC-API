package com.pimpmypc.api.exception;

import lombok.Getter;
import org.springframework.http.HttpStatus;

@Getter
public class AddressException extends RuntimeException {
    private HttpStatus httpStatus;

    public AddressException(String message) {
        super(message);
    }

    public AddressException(String message, HttpStatus httpStatus) {
        this.httpStatus = httpStatus;
    }
}
