package com.codecoool.rental.services;



import com.codecoool.rental.RecordNotFoundException;
import com.codecoool.rental.model.*;
import spark.Request;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class RentalService {

    public EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpaexamplePU");
    public EntityManager em = emf.createEntityManager();

    // TODO
    // make reservation

    public HashMap writeRentalReview(Request req) {

        HashMap<String, Object> params = new HashMap<>();
        params.put("id",req.params("id"));
        return params;
    }

    public HashMap getRental(Request req) throws RecordNotFoundException {
        HashMap<String, Object> params = new HashMap<>();
        TypedQuery<Rental> queryResult = em.createNamedQuery("getRental", Rental.class);
        queryResult.setParameter("id", Integer.parseInt(req.params("id")));
        List<Rental> rentals = queryResult.getResultList();

        if (rentals.size() == 0) {
            throw new RecordNotFoundException("Could not find any record with a given id " + req.params("id"));
        }

        Rental rental = rentals.get(0);
        params.put("id", rental.getId());
        params.put("name", rental.getName());
        params.put("description", rental.getDescription());
        params.put("price", rental.getPrice());
        params.put("city", rental.getCity());
        params.put("numberOfGuests", rental.getNumOfGuests());
        params.put("reviews", rental.getReviews());
        params.put("rating",rental.getRating());
        System.out.println(rental);
        for(Review review : rental.getReviews()){
            System.out.println(review.getText());
            System.out.println(review.getRating());
        }
        return params;
    }

    public HashMap getAllRentals() throws RecordNotFoundException {
        HashMap<String, Object> params = new HashMap<>();
        List<Rental> rentals = em.createNamedQuery("getRentals", Rental.class).getResultList();
        if (rentals.size() == 0) {
            throw new RecordNotFoundException("Could not find any records");
        }

        params.put("rentals", rentals);
        return params;
    }

    public HashMap getReservationsByUserId(Request req) throws RecordNotFoundException {
        HashMap<String, Object> params = new HashMap<>();
        List<Reservation> reservations = em.createNamedQuery("getReservationsByUserId", Reservation.class)
                .setParameter("userId", Integer.parseInt(req.params("userId")))
                .getResultList();

        if (reservations.size() == 0) {
            throw new RecordNotFoundException("Could not find any record with the given user id " + req.params("userId"));
        }

        params.put("reservations", reservations);
        return params;
    }

    public void addRentalReview(Request request) throws RecordNotFoundException{
        if (!em.getTransaction().isActive()){
            em.getTransaction().begin();
        }
        String text = request.queryParams("review");
        int id = Integer.parseInt(request.queryParams("id"));
        System.out.println(id);
        int rating = Integer.parseInt(request.queryParams("rating"));
        TypedQuery<Rental> queryResult = em.createNamedQuery("getRental",Rental.class);
        queryResult.setParameter("id",id);
        List<Rental> rentals = queryResult.getResultList();
        if (rentals == null){
            throw new RecordNotFoundException("Could not find any record with the given rental id " + id);
        }

        Rental rental = rentals.get(0);
        Review review = new Review(rating,text);
        rental.addReview(review);
        review.setRental(rental);
        em.persist(review);
        em.getTransaction().commit();
    }

    public void submitRegistration(Request req){
        String name = req.queryParams("name");
        String description = req.queryParams("description");
        String location = req.queryParams("location");
        double price = Double.parseDouble(req.queryParams("price"));
        int numOfGuests = Integer.parseInt(req.queryParams("numOfGuest"));
        int numOfBed = Integer.parseInt(req.queryParams("numOfBed"));
        int numOfRoom = Integer.parseInt(req.queryParams("numOfRoom"));
        boolean hasWifi = false;
        boolean hasAirConditioner = false;
        hasWifi = req.queryParams("hasWifi") != null;
        hasAirConditioner = req.queryParams("hasAirConditioner") != null;

        Facility facility = new Facility(numOfRoom,numOfBed);
        Rental rental = new Rental(name,description,price,location,numOfGuests);
        Amenity amenity = new Amenity(hasWifi,hasAirConditioner);
        rental.setAmenity(amenity);
        rental.setFacility(facility);
        facility.setRental(rental);
        if (!em.getTransaction().isActive()){
            em.getTransaction().begin();
        }

        em.persist(amenity);
        em.persist(facility);
        em.persist(rental);
        em.getTransaction().commit();
    }

    public boolean submitReservation(Request req) {
        if (!em.getTransaction().isActive()) {
            em.getTransaction().begin();
        }
        String startDateInput = req.queryParams("startDate");
        String endDateInput = req.queryParams("endDate");
        String numOfPeople = req.queryParams("numberOfPeople");

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date startDate = Calendar.getInstance().getTime();
        java.util.Date endDate = Calendar.getInstance().getTime();

        try {
            startDate = sdf.parse(startDateInput);
            endDate = sdf.parse(endDateInput);
        } catch (ParseException e) {
            e.printStackTrace();
//            TODO: raise IllegalUserInput Exception
        }

        TypedQuery<Reservation> reservation = em.createNamedQuery("getNumOfReservationsForRentalInPeriod", Reservation.class)
                .setParameter("startDate", startDate)
                .setParameter("endDate", endDate);
        System.out.println(reservation.getResultList() == null);
        System.out.println(reservation.getResultList());
        if (reservation.getResultList().size() == 0) {
            Rental rental = new Rental("cifraPalota", "kecske", 500.0, "picsa", 3);
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


    // TODO
    // filter
    // TODO
    // CRUD
}
