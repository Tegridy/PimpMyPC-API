package com.pimpmypc.api.user;

import com.pimpmypc.api.exception.UserNotFoundException;
import com.pimpmypc.api.exception.UserRoleNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UserServiceImpl implements UserService {
    private final UserRepository userRepository;

    public UserServiceImpl(UserRepository userRepository) {
        this.userRepository = userRepository;
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
}
