package com.pimpmypc.api.user;

import com.pimpmypc.api.dto.AddressDto;
import com.pimpmypc.api.exception.UserNotFoundException;
import com.pimpmypc.api.exception.UserRoleNotFoundException;
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

        Address a = user.getAddress();

        this.addressRepository.save(a);

        if (user.getRoles() == null || user.getRoles().isEmpty()) {
            throw new UserRoleNotFoundException("User must have at least a role set!");
        }


        return userRepository.save(user);
    }

    @Override
    public boolean userAlreadyExist(String username) {
        return userRepository.findByUsername(username).isPresent();
    }

    @Override
    public User getUserAccountDetails(Long id) {
        return userRepository.findUserById(id)
                .orElseThrow(() -> new UserNotFoundException("User with given id do not exist."));
    }

    @Override
    public void updateUserAccountDetails(Long id, User newUser) {
        User user = this.userRepository.findUserById(id).orElseThrow(() -> new UserNotFoundException("User with given id do not exist."));

        Address address = user.getAddress();
        Address newAddress = newUser.getAddress();

        if (mapToAddressDto(address).equals(mapToAddressDto(newAddress))) {
            log.info(String.format("User with id %d - addresses are the same not changing.", id));
        } else {
            address.setStreet(newAddress.getStreet());
            address.setCity(newAddress.getCity());
            address.setState(newAddress.getState());
            address.setZip(newAddress.getZip());
            address.setModifiedAt(LocalDateTime.now());

            user.setAddress(address);
            log.info(String.format("User with id %d - address changed", id));
        }

        if (!user.getPassword().equals(newUser.getPassword())) {
            user.setPassword(new BCryptPasswordEncoder(12).encode(newUser.getUsername()));
            log.info(String.format("User with id %d - password changed", id));
        }

        user.setFirstName(newUser.getFirstName());
        user.setLastName(newUser.getLastName());
        user.setPhone(newUser.getPhone());
        user.setEmail(newUser.getEmail());
        user.setModifiedAt(LocalDateTime.now());

        this.userRepository.save(user);
        log.info(String.format("User with id %d - account data updated successfully", id));
    }

    private AddressDto mapToAddressDto(Address address) {
        return new AddressDto(address.getStreet(), address.getCity(), address.getState(), address.getZip());
    }

    @Override
    public void updateUserPersonalDetails(Long id, User newUser) {
        User user = this.userRepository.findUserById(id).orElseThrow(() -> new UserNotFoundException("User with given id do not exist."));

        user.setFirstName(newUser.getFirstName());
        user.setLastName(newUser.getLastName());
        user.setPhone(newUser.getPhone());
        user.setEmail(newUser.getEmail());

        this.userRepository.save(user);
        log.info(String.format("User with id %d - account personal details updated successfully", id));
    }
}
