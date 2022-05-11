package com.pimpmypc.api.exception;

import lombok.Getter;
import org.springframework.http.HttpStatus;

@Getter
public class CartException extends RuntimeException {
    HttpStatus httpStatus;

    public CartException(String message) {
        super(message);
    }

    public CartException(String message, HttpStatus status) {
        super(message);
        this.httpStatus = status;
    }
}
