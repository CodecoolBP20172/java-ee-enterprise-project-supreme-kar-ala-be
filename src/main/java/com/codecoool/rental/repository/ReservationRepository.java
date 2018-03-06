package com.codecoool.rental.repository;

import com.codecoool.rental.model.Reservation;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ReservationRepository extends JpaRepository<Reservation, Integer> {
    List<Reservation> findAllByUserId(Integer userId);
}