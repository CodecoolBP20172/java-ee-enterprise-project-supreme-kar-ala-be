package com.codecoool.rental.service;

import com.codecoool.rental.model.*;
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

    public boolean isPeriodFree(String startDateInput, String endDateInput, Integer numOfPeople, Integer rentalId, Integer userId) {

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date startDate;
        Date endDate;

        try {
            startDate = sdf.parse(startDateInput);
            endDate = sdf.parse(endDateInput);
        } catch (ParseException e) {
            e.printStackTrace();
            throw new IllegalArgumentException("not valid format");
        }
/*
        TypedQuery<Reservation> reservationTypedQuery = em.createNamedQuery("getNumOfReservationsForRentalInPeriod", Reservation.class)
                .setParameter("rentalId", rentalId)
                .setParameter("startDate", startDate)
                .setParameter("endDate", endDate);


        if (reservationTypedQuery.getResultList().size() == 0) {
            TypedQuery<User> userTypedQuery = em.createNamedQuery("getUserById", User.class).setParameter("id", userId);
            User user = userTypedQuery.getSingleResult();

            TypedQuery<Rental> rentalTypedQuery = em.createNamedQuery("getRental", Rental.class).setParameter("id", rentalId);
            Rental rental = rentalTypedQuery.getSingleResult();

            // TODO check if user is the host of the rental
            ReservationPeriodHost host = new ReservationPeriodHost(startDate, endDate);

            Reservation reservation = new Reservation();
            reservation.setNumberOfPeople(numOfPeople);
            reservation.setRental(rental);
            reservation.setUser(user);
            reservation.setReservationPeriod(host);
            em.persist(reservation);
            em.getTransaction().commit();
            */
            return true;
    }

    public List<Reservation> getReservationsByUserId(int user_id) {
        return reservationRepository.findAllByUserId(user_id);
    }

    public void save(Reservation entity) {
        reservationRepository.save(entity);
    }

    public void submitReservation(String startDateInput, String endDateInput, Integer numberOfPeople, Integer rentalId, Integer userId) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date startDate;
        Date endDate;

        try {
            startDate = sdf.parse(startDateInput);
            endDate = sdf.parse(endDateInput);
        } catch (ParseException e) {
            e.printStackTrace();
            throw new IllegalArgumentException("not valid format");
        }

        ReservationPeriod reservationPeriod = new ReservationPeriodGuest(startDate, endDate);
        User user = userService.getUserById(userId);
        Rental rental = rentalService.getRental(rentalId);
        Reservation reservation = new Reservation(numberOfPeople,reservationPeriod, user, rental);
        reservationRepository.save(reservation);
    }

    //TODO update reservation
    //TODO delete reservation
}
