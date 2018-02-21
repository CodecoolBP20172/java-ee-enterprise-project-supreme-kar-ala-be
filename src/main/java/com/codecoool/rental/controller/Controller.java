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
        int id = Integer.parseInt(req.params("id"));
        return new ModelAndView(rentalService.writeRentalReview(id), "add_review");
    }

    public void addRentalReview(Request req) throws RecordNotFoundException {
        String review = req.queryParams("review");
        int id = Integer.parseInt(req.queryParams("id"));
        int rating = Integer.parseInt(req.queryParams("rating"));
        rentalService.submitRentalReview(review, id, rating);
    }

    public ModelAndView getRental(Request req) throws RentalDaoException {
        int id = Integer.parseInt(req.params("id"));
        return new ModelAndView(rentalService.getRental(id), "rental");
    }

    public ModelAndView getRentals() throws RecordNotFoundException {
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

        boolean hasWifi = req.queryParams("hasWifi") != null;
        boolean hasAirConditioner = req.queryParams("hasAirConditioner") != null;

        rentalService.registerRental(name, description, location, price, numOfGuests, numOfBed, numOfRoom, hasWifi, hasAirConditioner);
    }

    public ModelAndView getReservationsByUserId(Request req) throws RecordNotFoundException {
        int id = Integer.parseInt(req.params("userId"));
        return new ModelAndView(reservationService.getReservationsByUserId(id), "userReservations");
    }

    public ModelAndView makeReservation() {
        return new ModelAndView(new HashMap<>(), "/makeReservation");
    }

    public boolean submitReservation(Request req) {
        String startDateInput = req.queryParams("startDate");
        String endDateInput = req.queryParams("endDate");
        String numOfPeople = req.queryParams("numberOfPeople");
        return reservationService.submitReservation(startDateInput, endDateInput, numOfPeople);
    }
}
