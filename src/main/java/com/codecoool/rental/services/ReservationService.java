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
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

public class ReservationService {

    public EntityManager em;

    public ReservationService(EntityManager em) {
        this.em = em;
    }

    public boolean submitReservation(String startDateInput, String endDateInput, String numOfPeople, int user_id) throws RecordNotFoundException {
        if (!em.getTransaction().isActive()) {
            em.getTransaction().begin();
        }

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date startDate = Calendar.getInstance().getTime();
        java.util.Date endDate = Calendar.getInstance().getTime();

        try {
            startDate = sdf.parse(startDateInput);
            endDate = sdf.parse(endDateInput);
        } catch (ParseException e) {
            e.printStackTrace();
            throw new RecordNotFoundException("Could not find any records");
        }

        TypedQuery<Reservation> reservation = em.createNamedQuery("getNumOfReservationsForRentalInPeriod", Reservation.class)
                .setParameter("startDate", startDate)
                .setParameter("endDate", endDate);
        System.out.println(reservation.getResultList() == null);
        System.out.println(reservation.getResultList());
        if (reservation.getResultList().size() == 0) {
            User user3 = new User();
            Rental rental = new Rental("cifraPalota", "kecske", 500.0, "picsa", 3, user3);
            ReservationPeriodHost host = new ReservationPeriodHost(startDate, endDate);
            Reservation reservation6 = new Reservation();
            reservation6.setRental(rental);
            reservation6.setReservationPeriod(host);
            em.persist(reservation6);
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
