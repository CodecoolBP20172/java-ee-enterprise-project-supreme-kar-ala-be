package com.codecoool.rental.repository;

import com.codecoool.rental.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Integer>{
}
