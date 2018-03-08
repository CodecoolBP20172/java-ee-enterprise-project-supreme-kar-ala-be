package com.codecoool.rental.repository;

import com.codecoool.rental.model.Rental;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RentalRepository extends JpaRepository<Rental, Integer>{
    List<Rental> findAllByCity(String city);

}


