package com.codecoool.rental.repository;

import com.codecoool.rental.model.Reservation;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Date;
import java.util.List;

public interface ReservationRepository extends JpaRepository<Reservation, Integer> {
    List<Reservation> findAllByUserId(Integer userId);

    List<Reservation> getReservationsForRentalInPeriod(Integer rentalId, Date startDate, Date endDate);
}
