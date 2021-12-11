package com.pimpmypc.api.auth;


import com.fasterxml.jackson.core.JsonProcessingException;
import com.pimpmypc.api.exception.AuthenticationException;
import com.pimpmypc.api.exception.UserAlreadyExistException;
import com.pimpmypc.api.user.User;
import com.pimpmypc.api.user.UserDto;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import javax.validation.Valid;

@RestController
@RequestMapping("/api/v1/auth")
@CrossOrigin("*")
public class AuthController {

    private final AuthService authService;
    private final Logger logger = LoggerFactory.getLogger(AuthController.class);

    public AuthController(AuthService authService) {
        this.authService = authService;
    }

    @PostMapping(value = "/register", produces = "application/json")
    public ResponseEntity<String> register(@RequestBody @Valid User user) {
        try {

            String u = authService.signUp(user);
            logger.info(String.format("User %s account successfully created.", user.getUsername()));

            return new ResponseEntity<>(
                    String.format("""
                            {
                            "token": "%s"
                            }""", u)
                    , HttpStatus.CREATED);

        } catch (UserAlreadyExistException ex) {
            throw new ResponseStatusException(HttpStatus.CONFLICT, ex.getMessage());
        }
    }

    @PostMapping(value = "/login", produces = "application/json")
    public ResponseEntity<String> login(@RequestBody UserDto loginRequest) {
        try {
            String loginJson = authService.signIn(loginRequest.getUsername(), loginRequest.getPassword());

            logger.info(String.format("Login successful for user %s", loginRequest.getUsername()));
            return ResponseEntity.ok(loginJson);
        } catch (AuthenticationException ex) {
            logger.error("Authentication problem ", ex);
            throw new ResponseStatusException(HttpStatus.CONFLICT, ex.getMessage());
        } catch (JsonProcessingException ex) {
            logger.error("Login response processing error ", ex);
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "Error while creating login response object.");
        }
    }

    // For tests purposes only
    @GetMapping("/secured")
    public String secured() {
        return "secured";
    }
}
