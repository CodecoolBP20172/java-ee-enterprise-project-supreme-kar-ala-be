package com.codecoool.rental.service;

import com.codecoool.rental.model.*;
import com.codecoool.rental.repository.RentalRepository;
import com.codecoool.rental.repository.ReviewRepository;
import com.codecoool.rental.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class RentalService {

    @Autowired
    public RentalRepository rentalRepository;

    @Autowired
    public UserRepository userRepository;

    @Autowired
    public ReviewRepository reviewRepository;


    public void submitRentalReview(String newReview, int rentalId, int rating, int userId) {
        Rental rental = rentalRepository.findOne(rentalId);
        User user = userRepository.findOne(userId);

        Review review = new Review(rating, newReview, user);
        rental.addReview(review);
        review.setRental(rental);

        reviewRepository.save(review);
    }

    public Review getRentalReviewToUpdate(int reviewId) {
        return reviewRepository.findOne(reviewId);
    }

    public void postUpdateRentalReview(String text, double rating, int reviewId) {
        Review review = reviewRepository.findOne(reviewId);
        review.setText(text);
        review.setRating(rating);
        reviewRepository.save(review);
    }

    //TODO delete rentalreview

    public Rental getRental(int id){
        return rentalRepository.findOne(id);
    }

    public void registerRental(int user_id, String name, String description, String location, String price, String numOfGuests, String numOfBed, String numOfRoom, String hasWifi, String hasAirConditioner, String pictureUrl) {

        double priceDouble = Double.parseDouble(price);
        int numOfGuestsInt = Integer.parseInt(numOfGuests);
        int numOfBedInt = Integer.parseInt(numOfBed);
        int numOfRoomInt = Integer.parseInt(numOfRoom);
        boolean hasWifiOrNot = hasWifi != null;
        boolean hasAirConditionerOrNot = hasAirConditioner != null;

        if (pictureUrl.equals("")){
            pictureUrl = "http://placehold.it/900x400";
        }

        Facility facility = new Facility(numOfRoomInt, numOfBedInt);

        User user = userRepository.findOne(user_id);
        Picture picture = new Picture(name, pictureUrl);
        Rental rental = new Rental(name, description, priceDouble, location, numOfGuestsInt, user);
        Amenity amenity = new Amenity(hasWifiOrNot, hasAirConditionerOrNot);
        rental.addPictures(picture);
        picture.setRental(rental);
        rental.setAmenity(amenity);
        rental.setFacility(facility);
        facility.setRental(rental);

        rentalRepository.save(rental);
    }

    //TODO update rental
    //TODO delete rental

    public List<Rental> getAllRentals() {
        return rentalRepository.findAll();
    }

    public void save(Rental entity) {
        rentalRepository.save(entity);
    }

    // TODO
    // filter
}
