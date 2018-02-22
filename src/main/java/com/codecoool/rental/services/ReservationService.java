package com.codecoool.rental.services;

import com.codecoool.rental.RecordNotFoundException;
import com.codecoool.rental.model.Rental;
import com.codecoool.rental.model.Reservation;
import com.codecoool.rental.model.ReservationPeriodHost;
import com.codecoool.rental.model.User;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

public class ReservationService {

    public EntityManager em;

    public ReservationService(EntityManager em) {
        this.em = em;
    }

    public boolean submitReservation(String startDateInput, String endDateInput, Integer numOfPeople, Integer rentalId, Integer userId) throws RecordNotFoundException {
        if (!em.getTransaction().isActive()) {
            em.getTransaction().begin();
        }

        // Todo should this be here, or in controller?
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date startDate;
        Date endDate;

        try {
            startDate = sdf.parse(startDateInput);
            endDate = sdf.parse(endDateInput);
        } catch (ParseException e) {
            e.printStackTrace();
            throw new RecordNotFoundException("Could not find any records");
        }

        TypedQuery<Reservation> reservationTypedQuery = em.createNamedQuery("getNumOfReservationsForRentalInPeriod", Reservation.class)
                .setParameter("rentalId", rentalId)
                .setParameter("startDate", startDate)
                .setParameter("endDate", endDate);
        System.out.println(reservationTypedQuery.getResultList() == null);
        System.out.println(reservationTypedQuery.getResultList());

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
            return true;
        } else {
            return false;
        }
    }

    public HashMap getReservationsByUserId(int user_id) throws RecordNotFoundException {
        HashMap<String, Object> params = new HashMap<>();
        List<Reservation> reservations = em.createNamedQuery("getReservationsByUserId", Reservation.class)
                .setParameter("userId", user_id)
                .getResultList();

        if (reservations.size() == 0) {
            throw new RecordNotFoundException("Could not find any record with the given user id " + user_id);
        }

        params.put("reservations", reservations);
        return params;
    }

    //TODO update reservation
    //TODO delete reservation
}
