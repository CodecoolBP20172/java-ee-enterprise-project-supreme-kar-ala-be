package com.codecoool.rental.service;

import com.codecoool.rental.model.ReservationPeriod;
import com.codecoool.rental.repository.ReservationPeriodRepository;
import com.codecoool.rental.repository.ReservationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReservationPeriodService {

    @Autowired
    ReservationPeriodRepository reservationPeriodRepositoryRepository;

    public void save(ReservationPeriod entity) {
        reservationPeriodRepositoryRepository.save(entity);
    }
}
