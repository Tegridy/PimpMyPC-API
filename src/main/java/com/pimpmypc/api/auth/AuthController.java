package com.pimpmypc.api.auth;


import com.fasterxml.jackson.core.JsonProcessingException;
import com.pimpmypc.api.user.User;
import com.pimpmypc.api.user.dto.UserDto;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
@RequestMapping("/api/v1/auth")
@AllArgsConstructor
@Slf4j
public class AuthController {

    private final AuthService authService;

    @PostMapping(value = "/register", produces = "application/json")
    public ResponseEntity<String> register(@RequestBody @Valid User user) throws JsonProcessingException {
        String username = authService.signUp(user);
        log.info(String.format("User %s account successfully created.", user.getUsername()));

        return new ResponseEntity<>(username, HttpStatus.CREATED);
    }

    @PostMapping(value = "/login", produces = "application/json")
    public ResponseEntity<String> login(@RequestBody UserDto loginRequest) {
        String loginJson = authService.signIn(loginRequest.getUsername(), loginRequest.getPassword());

        log.info(String.format("Login successful for user %s", loginRequest.getUsername()));
        return ResponseEntity.ok(loginJson);
    }

    // For tests purposes only
    @GetMapping("/secured")
    public String secured() {
        return "secured";
    }
}
