package com.pimpmypc.api.user;

import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user")
@AllArgsConstructor
@CrossOrigin("*")
public class UserController {

    private final UserService userService;

    @GetMapping("/account-details/{id}")
    public User getUserAccountDetails(@PathVariable Long id) {
        return userService.getUserAccountDetails(id);
    }
}
