package com.pimpmypc.api.exception;

import lombok.Getter;
import org.springframework.http.HttpStatus;

@Getter
public class ProductException extends RuntimeException {
    private HttpStatus httpStatus;

    public ProductException(String message) {
        super(message);
    }

    public ProductException(String message, HttpStatus httpStatus) {
        this.httpStatus = httpStatus;
    }
}
