package com.codecoool.rental.service;

import com.codecoool.rental.exceptions.RecordNotFoundException;
import com.codecoool.rental.model.*;
import com.codecoool.rental.repository.RentalRepository;
import com.codecoool.rental.repository.ReservationRepository;
import com.codecoool.rental.repository.ReviewRepository;
import com.codecoool.rental.repository.UserRepository;
import com.sun.xml.internal.bind.v2.TODO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.HashMap;
import java.util.List;

@Service
public class RentalService {

    @Autowired
    public RentalRepository rentalRepository;

    @Autowired
    public UserRepository userRepository;

    @Autowired
    public ReviewRepository reviewRepository;


    public HashMap writeRentalReview(int rentalId, int userId) {
        HashMap<String, Object> params = new HashMap<>();
        params.put("rental_id", rentalId);
        params.put("user_id", userId);
        params.put("status", "new");
        return params;
    }

    public void submitRentalReview(String newReview, int rentalId, int rating, int userId) {
        Rental rental = rentalRepository.findOne(rentalId);
        User user = userRepository.findOne(userId);

        Review review = new Review(rating, newReview, user);
        rental.addReview(review);
        review.setRental(rental);

        reviewRepository.save(review);
    }
    //TODO: refactor to return review
    public HashMap getRentalReviewToUpdate(int reviewId) {
        HashMap<String, Object> params = new HashMap<>();
        Review review = reviewRepository.findOne(reviewId);
        String text = review.getText();
        double rating = review.getRating();
        params.put("review", text);
        params.put("rating", rating);
        params.put("status", "update");
        params.put("review_id", reviewId);
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

    public void save(Rental entity) {
        rentalRepository.save(entity);
    }

    public List<Rental> findAll() {
        return rentalRepository.findAll();
    }

    // TODO
    // filter
}
