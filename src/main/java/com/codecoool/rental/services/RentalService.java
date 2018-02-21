package com.codecoool.rental.services;

import com.codecoool.rental.RecordNotFoundException;
import com.codecoool.rental.model.Amenity;
import com.codecoool.rental.model.Facility;
import com.codecoool.rental.model.Rental;
import com.codecoool.rental.model.Review;
import spark.Request;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import java.util.HashMap;
import java.util.List;

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

    public void submitRentalReview(Request request) throws RecordNotFoundException{
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

    //TODO update rentalreview
    //TODO delete rentalreview

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

    public void registerRental(Request req){
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

    //TODO update rental
    //TODO delete rental

    public HashMap getAllRentals() throws RecordNotFoundException {
        HashMap<String, Object> params = new HashMap<>();
        List<Rental> rentals = em.createNamedQuery("getRentals", Rental.class).getResultList();
        if (rentals.size() == 0) {
            throw new RecordNotFoundException("Could not find any records");
        }

        params.put("rentals", rentals);
        return params;
    }

    // TODO
    // filter
}
