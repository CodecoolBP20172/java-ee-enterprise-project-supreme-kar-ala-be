package com.codecoool.rental.repository;

import com.codecoool.rental.model.ReservationPeriod;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReservationPeriodRepository extends JpaRepository<ReservationPeriod, Integer>{
}
