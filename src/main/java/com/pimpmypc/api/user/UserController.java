package com.pimpmypc.api.user;

import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("api/v1/user")
@AllArgsConstructor
@CrossOrigin("*")
public class UserController {

    private final UserService userService;

    @GetMapping("/account-details/{id}")
    public User getUserAccountDetails(@PathVariable Long id) {
        return userService.getUserAccountDetails(id);
    }

    @PutMapping("/update/{id}")
    public void updateUserAccount(@PathVariable Long id, @RequestBody User user) {
        userService.updateUserAccountDetails(id, user);
    }

    @PutMapping("/{id}/personal-details")
    public void updateUserPersonalDetails(@PathVariable Long id, @RequestBody User user) {
        userService.updateUserPersonalDetails(id, user);
    }
}
