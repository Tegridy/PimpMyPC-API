package com.pimpmypc.api.user;

import com.pimpmypc.api.exception.UserNotFoundException;
import com.pimpmypc.api.exception.UserRoleNotFoundException;
import com.pimpmypc.api.user.dto.UserAddressDto;
import com.pimpmypc.api.user.dto.UserAuthDto;
import com.pimpmypc.api.user.dto.UserPersonalDataDto;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@Service
@Slf4j
public class UserServiceImpl implements UserService {
    private final UserRepository userRepository;
    private final AddressRepository addressRepository;

    public UserServiceImpl(UserRepository userRepository, AddressRepository addressRepository) {
        this.userRepository = userRepository;
        this.addressRepository = addressRepository;
    }


    @Override
    public Optional<User> findByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    @Override
    public List<User> getAllUsers() {
        return userRepository.findAll();
    }

    @Override
    public User getUserById(Long id) {
        return userRepository.getById(id);
    }

    @Override
    public User saveUser(User user) {

//        Address a = user.getAddress();
//        addressRepository.findByStreet(a.getStreet()).ifPresent(user::setAddress);
//
//        if (a != null) {
//            user
//        }
        //addressRepository.save(user.getAddress());

        if (user.getRoles() == null || user.getRoles().isEmpty()) {
            throw new UserRoleNotFoundException("User must have at least a role set!");
        }

        return userRepository.save(user);
    }

    @Override
    public boolean userAlreadyExist(String username) {
        return userRepository.findByUsername(username).isPresent();
    }

//    private AddressDto mapToAddressDto(Address address) {
//        return new AddressDto(address.getStreet(), address.getCity(), address.getState(), address.getZip());
//    }

    @Override
    public User getUserAccountDetails(Long id) {
        return userRepository.findUserById(id)
                .orElseThrow(() -> new UserNotFoundException("User with given id do not exist."));
    }

    @Override
    public UserPersonalDataDto updateUserPersonalDetails(Long id, UserPersonalDataDto newUserPersonalData) {
        User user = this.userRepository.findUserById(id).orElseThrow(
                () -> new UserNotFoundException("User with given id do not exist."));

        user.setFirstName(newUserPersonalData.getFirstName());
        user.setLastName(newUserPersonalData.getLastName());
        user.setPhone(newUserPersonalData.getPhone());
        user.setEmail(newUserPersonalData.getEmail());

        user.setModifiedAt(LocalDateTime.now());
        this.userRepository.save(user);
        log.info(String.format("User with id %d - account personal details updated successfully", id));

        return UserPersonalDataDto.builder().firstName(user.getFirstName()).lastName(user.getLastName())
                .email(user.getEmail()).phone(user.getPhone()).build();
    }

    @Override
    public UserAddressDto updateUserAddressDetails(Long id, UserAddressDto newUserAddress) {
        User user = this.userRepository.findUserById(id).orElseThrow(
                () -> new UserNotFoundException("User with given id do not exist."));
        Address address = user.getAddress();

        address.setStreet(newUserAddress.getStreet());
        address.setCity(newUserAddress.getCity());
        address.setState(newUserAddress.getState());
        address.setZip(newUserAddress.getZip());
        address.setModifiedAt(LocalDateTime.now());

        user.setAddress(address);
        user.setModifiedAt(LocalDateTime.now());
        this.userRepository.save(user);
        log.info(String.format("User with id %d - address data updated successfully", id));

        return UserAddressDto.builder().street(address.getStreet()).city(address.getCity()).state(address.getState())
                .zip(address.getZip()).build();
    }

    @Override
    public UserAuthDto updateUserAuthDetails(Long id, String newPassword) {
        User user = this.userRepository.findUserById(id).orElseThrow(
                () -> new UserNotFoundException("User with given id do not exist."));

        user.setPassword(new BCryptPasswordEncoder(12).encode(newPassword));
        user.setModifiedAt(LocalDateTime.now());
        userRepository.save(user);
        log.info(String.format("User with id %d - password changed", id));

        return new UserAuthDto(user.getUsername());
    }
}
