package com.pimpmypc.api.exception;

import lombok.Getter;
import org.springframework.http.HttpStatus;

@Getter
public class UserException extends RuntimeException {
    private HttpStatus httpStatus;

    public UserException(String message) {
        super(message);
    }

    public UserException(String message, HttpStatus status) {
        super(message);
        this.httpStatus = status;
    }
}
