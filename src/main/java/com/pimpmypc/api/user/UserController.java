package com.pimpmypc.api.user;

import com.pimpmypc.api.user.dto.UserAddressDto;
import com.pimpmypc.api.user.dto.UserAuthDto;
import com.pimpmypc.api.user.dto.UserPersonalDataDto;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("api/v1/users")
@AllArgsConstructor
public class UserController {

    private final UserService userService;

    @GetMapping("/{id}")
    public ResponseEntity<User> getUserAccountDetails(@PathVariable Long id) {
        return ResponseEntity.ok(userService.getUserAccountDetails(id));
    }

    @PatchMapping("/{id}/personal")
    public ResponseEntity<UserPersonalDataDto> updateUserPersonalDetails(@PathVariable Long id, @RequestBody UserPersonalDataDto userPersonalDataDto) {
        return ResponseEntity.ok(userService.updateUserPersonalDetails(id, userPersonalDataDto));
    }

    @PatchMapping("/{id}/address")
    public ResponseEntity<UserAddressDto> updateUserAddressDetails(@PathVariable Long id, @RequestBody UserAddressDto userAddressDto) {
        return ResponseEntity.ok(userService.updateUserAddressDetails(id, userAddressDto));
    }

    @PatchMapping("/{id}/auth")
    public ResponseEntity<UserAuthDto> updateUserAuthDetails(@PathVariable Long id, @RequestBody String newPassword) {
        return ResponseEntity.ok(userService.updateUserAuthDetails(id, newPassword));
    }
}
