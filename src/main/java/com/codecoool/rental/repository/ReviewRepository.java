package com.codecoool.rental.repository;

import com.codecoool.rental.model.Review;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReviewRepository extends JpaRepository<Review, Integer>{
}
