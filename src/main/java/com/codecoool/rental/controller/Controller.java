package com.codecoool.rental.controller;

import com.codecoool.rental.RecordNotFoundException;
import com.codecoool.rental.RentalDaoException;
import com.codecoool.rental.services.RentalService;
import com.codecoool.rental.services.ReservationService;
import com.codecoool.rental.services.UserService;
import spark.ModelAndView;
import spark.Request;

import java.util.HashMap;

public class Controller {

    RentalService rentalService;
    UserService userService;
    ReservationService reservationService;


    private static volatile Controller instance = null;

    private Controller() {
        rentalService = new RentalService();
        userService = new UserService();
        reservationService = new ReservationService();
    }

    public static Controller getInstance() {
        if (instance == null) {
            synchronized (Controller.class) {
                if (instance == null) {
                    instance = new Controller();
                }
            }
        }
        return instance;
    }

    public ModelAndView index() {
        return new ModelAndView(new HashMap<>(), "index");
    }

    public ModelAndView RecordNoTFound(Exception e) {
        HashMap<String, Object> params = new HashMap<>();
        params.put("message", e.getMessage());
        return new ModelAndView(params, "errors/error404");
    }

    public ModelAndView ServerIssue(Exception e) {
        HashMap<String, Object> params = new HashMap<>();
        params.put("message", e.getMessage());
        return new ModelAndView(params, "errors/error500");
    }

    public ModelAndView writeRentalReview(Request req) {
        int rental_id = Integer.parseInt(req.params("id"));
        //TODO session!!!
        //int user_id = Integer.parseInt("VALAMI AMI LEKÉREI A SESSIONT");
        int user_id = 1;
        return new ModelAndView(rentalService.writeRentalReview(rental_id, user_id), "add_review");
    }

    public void submitRentalReview(Request req) throws RecordNotFoundException {
        String review = req.queryParams("review");
        int rental_id = Integer.parseInt(req.queryParams("rental_id"));
        int rating = Integer.parseInt(req.queryParams("rating"));
        //TODO session!!!
        //int user_id = Integer.parseInt("VALAMI AMI LEKÉREI A SESSIONT");
        int user_id = 1;
        rentalService.submitRentalReview(review, rental_id, rating, user_id);
    }

    public ModelAndView getRental(Request req) throws RentalDaoException {
        int id = Integer.parseInt(req.params("id"));
        return new ModelAndView(rentalService.getRental(id), "rental");
    }

    public ModelAndView getAllRentals() throws RecordNotFoundException {
        return new ModelAndView(rentalService.getAllRentals(), "rentals");
    }

    public ModelAndView registerRental() {
        return new ModelAndView(new HashMap<>(), "register_rental");
    }

    public void submitRegistration(Request req){
        String name = req.queryParams("name");
        String description = req.queryParams("description");
        String location = req.queryParams("location");
        double price = Double.parseDouble(req.queryParams("price"));
        int numOfGuests = Integer.parseInt(req.queryParams("numOfGuest"));
        int numOfBed = Integer.parseInt(req.queryParams("numOfBed"));
        int numOfRoom = Integer.parseInt(req.queryParams("numOfRoom"));
        //TODO session!!!
        //int user_id = Integer.parseInt("VALAMI AMI LEKÉREI A SESSIONT");
        int user_id = 1;

        boolean hasWifi = req.queryParams("hasWifi") != null;
        boolean hasAirConditioner = req.queryParams("hasAirConditioner") != null;

        rentalService.registerRental(user_id, name, description, location, price, numOfGuests, numOfBed, numOfRoom, hasWifi, hasAirConditioner);
    }

    public ModelAndView getReservationsByUserId(Request req) throws RecordNotFoundException {
        //TODO session!!!
        //int user_id = Integer.parseInt("VALAMI AMI LEKÉREI A SESSIONT");
        int user_id = 1;
        return new ModelAndView(reservationService.getReservationsByUserId(user_id), "userReservations");
    }

    public ModelAndView makeReservation() {
        return new ModelAndView(new HashMap<>(), "/makeReservation");
    }

    public boolean submitReservation(Request req) throws RecordNotFoundException {
        String startDateInput = req.queryParams("startDate");
        String endDateInput = req.queryParams("endDate");
        String numOfPeople = req.queryParams("numberOfPeople");

        //TODO session!!!
        //int user_id = Integer.parseInt("VALAMI AMI LEKÉREI A SESSIONT");
        int user_id = 1;

        return reservationService.submitReservation(startDateInput, endDateInput, numOfPeople, user_id);
    }

    public ModelAndView getUpdateRentalReview(Request req) {
        int review_id = Integer.parseInt(req.params("review_id"));

        return new ModelAndView(rentalService.getUpdateRentalReview(review_id),"/add_review");
    }

    public void postUpdateRentalReview(Request req){
        int review_id = Integer.parseInt(req.params("review_id"));
        String text = req.queryParams("review");
        double rating = Double.parseDouble(req.queryParams("rating"));

        rentalService.postUpdateRentalReview(text,rating,review_id);
    }
}
