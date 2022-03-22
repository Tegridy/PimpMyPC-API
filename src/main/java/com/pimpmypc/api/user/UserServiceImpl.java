package com.pimpmypc.api.user;

import com.pimpmypc.api.exception.UserNotFoundException;
import com.pimpmypc.api.exception.UserRoleNotFoundException;
import com.pimpmypc.api.user.address.Address;
import com.pimpmypc.api.user.dto.UserAddressDto;
import com.pimpmypc.api.user.dto.UserAuthDto;
import com.pimpmypc.api.user.dto.UserPersonalDataDto;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
@Slf4j
@AllArgsConstructor
public class UserServiceImpl implements UserService {
    private final UserRepository userRepository;

    @Override
    public List<User> getAllUsers() {
        return userRepository.findAll();
    }

    @Override
    public User getUserById(Long id) {
        return userRepository.findUserById(id)
                .orElseThrow(() -> new UserNotFoundException("User with id: " + id + " not found"));
    }

    @Override
    public void saveUser(User user) {
        if (user.getRoles() == null || user.getRoles().isEmpty()) {
            log.error("User must have at least a role set!");
            throw new UserRoleNotFoundException("User must have at least a role set!");
        }

        userRepository.save(user);

        log.info("User: " + user.getUsername() + " saved successfully");
    }

    @Override
    public boolean userAlreadyExist(String username) {
        return userRepository.findByUsername(username).isPresent();
    }

    @Override
    public User getUserAccountDetails(Long id) {
        return userRepository.findUserById(id)
                .orElseThrow(() -> new UserNotFoundException("User with id: " + id + " do not exist"));
    }

    @Override
    public UserPersonalDataDto updateUserPersonalDetails(Long id, UserPersonalDataDto newUserPersonalData) {
        User user = this.userRepository.findUserById(id).orElseThrow(
                () -> new UserNotFoundException("User with given id do not exist"));

        user.setFirstName(newUserPersonalData.getFirstName());
        user.setLastName(newUserPersonalData.getLastName());
        user.setPhone(newUserPersonalData.getPhone());
        user.setEmail(newUserPersonalData.getEmail());

        user.setModifiedAt(LocalDateTime.now());
        this.userRepository.save(user);
        log.info(String.format("User with id: %d - account personal details updated successfully", id));

        return UserPersonalDataDto.builder().firstName(user.getFirstName()).lastName(user.getLastName())
                .email(user.getEmail()).phone(user.getPhone()).build();
    }

    @Override
    public UserAddressDto updateUserAddressDetails(Long id, UserAddressDto newUserAddress) {
        User user = this.userRepository.findUserById(id).orElseThrow(
                () -> new UserNotFoundException("User with given id do not exist"));
        Address address = user.getAddress();

        address.setStreet(newUserAddress.getStreet());
        address.setCity(newUserAddress.getCity());
        address.setState(newUserAddress.getState());
        address.setZip(newUserAddress.getZip());
        address.setModifiedAt(LocalDateTime.now());

        user.setAddress(address);
        user.setModifiedAt(LocalDateTime.now());
        this.userRepository.save(user);
        log.info(String.format("User with id: %d - address data updated successfully", id));

        return UserAddressDto.builder().street(address.getStreet()).city(address.getCity()).state(address.getState())
                .zip(address.getZip()).build();
    }

    @Override
    public UserAuthDto updateUserAuthDetails(Long id, String newPassword) {
        User user = this.userRepository.findUserById(id).orElseThrow(
                () -> new UserNotFoundException("User with given id do not exist"));

        user.setPassword(new BCryptPasswordEncoder(12).encode(newPassword));
        user.setModifiedAt(LocalDateTime.now());
        userRepository.save(user);
        log.info(String.format("User with id: %d - password changed", id));

        return new UserAuthDto(user.getUsername());
    }

    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username)
                .orElseThrow(() -> new UserNotFoundException(String.format("User %s not found", username)));
    }
}
