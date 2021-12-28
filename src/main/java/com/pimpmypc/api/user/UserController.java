package com.pimpmypc.api.user;

import com.pimpmypc.api.user.dto.UserAddressDto;
import com.pimpmypc.api.user.dto.UserAuthDto;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("api/v1/user")
@AllArgsConstructor
@CrossOrigin("*")
public class UserController {

    private final UserService userService;

    @GetMapping("/{id}/account-details")
    public User getUserAccountDetails(@PathVariable Long id) {
        return userService.getUserAccountDetails(id);
    }

    @PutMapping("/{id}/personal-details")
    public void updateUserPersonalDetails(@PathVariable Long id, @RequestBody User user) {
        userService.updateUserPersonalDetails(id, user);
    }

    @PutMapping("/{id}/address-details")
    public void updateUserAddressDetails(@PathVariable Long id, @RequestBody UserAddressDto user) {
        System.out.println(user.toString());
        userService.updateUserAddressDetails(id, user);
    }

    @PutMapping("/{id}/auth-details")
    public void updateUserAuthDetails(@PathVariable Long id, @RequestBody UserAuthDto user) {
        userService.updateUserAuthDetails(id, user);
    }
}
