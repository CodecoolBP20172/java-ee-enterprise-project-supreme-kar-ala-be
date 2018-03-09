package com.codecoool.rental.service;

import com.codecoool.rental.model.User;
import com.codecoool.rental.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public void save(User entity) {
        userRepository.save(entity);
    }

    public User getUserById(int id) {
        return userRepository.findOne(id);
    }
}
