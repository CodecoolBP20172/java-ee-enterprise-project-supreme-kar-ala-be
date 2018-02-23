package com.codecoool.rental.services;

import com.codecoool.rental.RecordNotFoundException;
import com.codecoool.rental.model.*;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.HashMap;
import java.util.List;

public class RentalService {

    public EntityManager em;

    public RentalService(EntityManager em) {
        this.em = em;
    }

    // TODO
    // make reservation

    public HashMap writeRentalReview(int rental_id, int user_id) {
        HashMap<String, Object> params = new HashMap<>();
        params.put("rental_id", rental_id);
        params.put("user_id", user_id);
        params.put("status", "new");
        return params;
    }

    public void submitRentalReview(String newReview, int rental_id, int rating, int user_id) throws RecordNotFoundException {
        if (!em.getTransaction().isActive()) {
            em.getTransaction().begin();
        }

        TypedQuery<Rental> queryResult = em.createNamedQuery("getRental", Rental.class);
        queryResult.setParameter("id", rental_id);
        Rental rentalResult = queryResult.getSingleResult();

        TypedQuery<User> users = em.createNamedQuery("getUserById", User.class);
        users.setParameter("id", user_id);
        User user = users.getSingleResult();

        Rental rental = rentalResult;
        Review review = new Review(rating, newReview, user);
        rental.addReview(review);
        review.setRental(rental);
        em.persist(review);
        em.getTransaction().commit();
    }

    //TODO update rentalreview
    public HashMap getUpdateRentalReview(int review_id) {
        HashMap<String, Object> params = new HashMap<>();
        TypedQuery<Review> queryResult = em.createNamedQuery("getReviewById", Review.class);
        queryResult.setParameter("id", review_id);
        Review review = queryResult.getSingleResult();
        String text = review.getText();
        double rating = review.getRating();
        params.put("review", text);
        params.put("rating", rating);
        params.put("status", "update");
        params.put("review_id", review_id);
        return params;
    }

    public void postUpdateRentalReview(String review, double rating, int review_id) {
        TypedQuery<Review> queryResult = em.createNamedQuery("getReviewById", Review.class).setParameter("id", review_id);
        Review reviewById = queryResult.getSingleResult();
        reviewById.setText(review);
        reviewById.setRating(rating);
        if (!em.getTransaction().isActive()) {
            em.getTransaction().begin();
        }
        em.persist(reviewById);
        em.getTransaction().commit();
    }

    //TODO delete rentalreview

    public HashMap getRental(int id) throws RecordNotFoundException {
        HashMap<String, Object> params = new HashMap<>();
        TypedQuery<Rental> queryResult = em.createNamedQuery("getRental", Rental.class);
        queryResult.setParameter("id", id);
        List<Rental> rentals = queryResult.getResultList();

        if (rentals.size() == 0) {
            throw new RecordNotFoundException("Could not find any record with a given id " + id);
        }

        Rental rental = rentals.get(0);
        params.put("id", rental.getId());
        params.put("name", rental.getName());
        params.put("description", rental.getDescription());
        params.put("price", rental.getPrice());
        params.put("city", rental.getCity());
        params.put("numberOfGuests", rental.getNumOfGuests());
        params.put("reviews", rental.getReviews());
        params.put("rating", rental.getRating());
        params.put("picture",rental.getPictures().get(0).getUrl());
        System.out.println(rental.getPictures().get(0).getUrl());
        return params;
    }

    public void registerRental(int user_id, String name, String description, String location, double price, int numOfGuests, int numOfBed, int numOfRoom, boolean hasWifi, boolean hasAirConditioner,String pictureUrl) {
        Facility facility = new Facility(numOfRoom, numOfBed);
        // TODO le kell kérni az adatbázisból a usert
        TypedQuery<User> users = em.createNamedQuery("getUserById", User.class);
        users.setParameter("id", user_id);
        User user = users.getSingleResult();
        Picture picture = new Picture(name,pictureUrl);
        Rental rental = new Rental(name, description, price, location, numOfGuests, user);
        Amenity amenity = new Amenity(hasWifi, hasAirConditioner);
        rental.addPictures(picture);
        picture.setRental(rental);
        rental.setAmenity(amenity);
        rental.setFacility(facility);
        facility.setRental(rental);

        if (!em.getTransaction().isActive()) {
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
