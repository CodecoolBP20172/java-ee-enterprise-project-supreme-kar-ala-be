package com.codecoool.rental.service;

import com.codecoool.rental.model.Rental;
import com.codecoool.rental.model.Reservation;
import com.codecoool.rental.model.ReservationType;
import com.codecoool.rental.model.User;
import com.codecoool.rental.repository.ReservationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class ReservationService {

    @Autowired
    ReservationRepository reservationRepository;

    @Autowired
    UserService userService;

    @Autowired
    RentalService rentalService;

    public boolean isPeriodFree(String startDateInput, String endDateInput, Integer rentalId) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date startDate;
        Date endDate;

        try {
            startDate = sdf.parse(startDateInput);
            endDate = sdf.parse(endDateInput);
        } catch (ParseException e) {
            e.printStackTrace();
            throw new IllegalArgumentException("Date was given in an invalid format");
        }

        List<Reservation> reservationsInPeriod = reservationRepository.getReservationsForRentalInPeriod(rentalId, startDate, endDate);
        return reservationsInPeriod.isEmpty();
    }

    public List<Reservation> getReservationsByUserId(int user_id) {
        return reservationRepository.findAllByUserId(user_id);
    }

    public void save(Reservation entity) {
        reservationRepository.save(entity);
    }

    public void submitReservation(String startDateInput, String endDateInput, int numberOfPeople, int rentalId, int userId) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date startDate;
        Date endDate;

        try {
            startDate = sdf.parse(startDateInput);
            endDate = sdf.parse(endDateInput);
        } catch (ParseException e) {
            e.printStackTrace();
            throw new IllegalArgumentException("Date was given in an invalid format");
        }

        User user = userService.getUserById(userId);
        Rental rental = rentalService.getRental(rentalId);
        ReservationType reservationType = ReservationType.GUEST;

        if (userId == rental.getUser().getId()) {
            reservationType = ReservationType.HOST;
        }

        Reservation reservation = new Reservation(numberOfPeople, startDate, endDate, reservationType, user, rental);
        reservationRepository.save(reservation);
    }

    //TODO update reservation
    //TODO delete reservation
}
