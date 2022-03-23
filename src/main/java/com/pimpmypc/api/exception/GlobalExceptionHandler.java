package com.pimpmypc.api.exception;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import java.util.ArrayList;
import java.util.List;

@ControllerAdvice
public class GlobalExceptionHandler extends ResponseEntityExceptionHandler {

    @Override
    protected ResponseEntity<Object> handleMethodArgumentNotValid(MethodArgumentNotValidException ex,
                                                                  HttpHeaders headers,
                                                                  HttpStatus status, WebRequest request) {
        List<String> details = new ArrayList<>();
        for (ObjectError error : ex.getBindingResult().getAllErrors()) {
            details.add(error.getDefaultMessage());
        }
        ErrorResponse error = new ErrorResponse("Validation failed", details);
        return ResponseEntity.badRequest().body(error);
    }

    @ExceptionHandler(InternalAuthenticationServiceException.class)
    public ResponseEntity<ErrorResponse> handleInternalAuthenticationServiceException(InternalAuthenticationServiceException ex,
                                                                                      WebRequest request) {
        ErrorResponse errorResponse = new ErrorResponse(ex.getMessage(), List.of(ex.getMessage()));
        return ResponseEntity.status(HttpStatus.FORBIDDEN).body(errorResponse);
    }

    @ExceptionHandler(BadCredentialsException.class)
    public ResponseEntity<ErrorResponse> handleInternalAuthenticationServiceException(BadCredentialsException ex,
                                                                                      WebRequest request) {
        ErrorResponse errorResponse = new ErrorResponse(ex.getMessage(), List.of(ex.getMessage()));
        return ResponseEntity.status(HttpStatus.FORBIDDEN).body(errorResponse);
    }

    @ExceptionHandler(JwtException.class)
    protected ResponseEntity<ErrorResponse> handleJwtTokenException(JwtException ex,
                                                                    HttpHeaders headers,
                                                                    HttpStatus status, WebRequest request) {
        ErrorResponse errorResponse = new ErrorResponse(ex.getMessage(), List.of(ex.getMessage()));
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(errorResponse);
    }

    @ExceptionHandler(UserRoleNotFoundException.class)
    protected ResponseEntity<ErrorResponse> handleUserRoleNotFoundException(UserRoleNotFoundException ex,
                                                                            HttpHeaders headers,
                                                                            HttpStatus status, WebRequest request) {
        ErrorResponse errorResponse = new ErrorResponse(ex.getMessage(), List.of(ex.getMessage()));
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(errorResponse);
    }

    @ExceptionHandler(ProductException.class)
    protected ResponseEntity<ErrorResponse> handleProductException(ProductException ex,
                                                                   WebRequest request) {
        ErrorResponse errorResponse = new ErrorResponse(ex.getMessage(), List.of(ex.getMessage()));
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(errorResponse);
    }

    @ExceptionHandler(ProductNotFoundException.class)
    protected ResponseEntity<ErrorResponse> handleProductNotFoundException(ProductNotFoundException ex,
                                                                           WebRequest request) {
        ErrorResponse errorResponse = new ErrorResponse(ex.getMessage(), List.of(ex.getMessage()));
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(errorResponse);
    }

    @ExceptionHandler(UserAlreadyExistException.class)
    protected ResponseEntity<ErrorResponse> handleUserAlreadyExistException(UserAlreadyExistException ex,
                                                                            WebRequest request) {
        ErrorResponse errorResponse = new ErrorResponse(ex.getMessage(), List.of(ex.getMessage()));
        return ResponseEntity.status(HttpStatus.CONFLICT).body(errorResponse);
    }

    @ExceptionHandler(UserNotFoundException.class)
    protected ResponseEntity<ErrorResponse> handleUserNotFoundException(UserNotFoundException ex,
                                                                        WebRequest request) {
        ErrorResponse errorResponse = new ErrorResponse(ex.getMessage(), List.of(ex.getMessage()));
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(errorResponse);
    }

    @ExceptionHandler(OrderNotFoundException.class)
    protected ResponseEntity<ErrorResponse> handleOrderNotFoundException(OrderNotFoundException ex,
                                                                         WebRequest request) {
        ErrorResponse errorResponse = new ErrorResponse(ex.getMessage(), List.of(ex.getMessage()));
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(errorResponse);
    }

    @ExceptionHandler(CategoryNotFoundException.class)
    protected ResponseEntity<ErrorResponse> handleCategoryNotFoundException(CategoryNotFoundException ex,
                                                                            WebRequest request) {
        ErrorResponse errorResponse = new ErrorResponse(ex.getMessage(), List.of(ex.getMessage()));
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(errorResponse);
    }
}