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
        return new ModelAndView(rentalService.writeRentalReview(req), "add_review");
    }

    public ModelAndView getRental(Request req) throws RentalDaoException {
        //TODO should we filter request here??
        return new ModelAndView(rentalService.getRental(req), "rental");
    }

    public ModelAndView getRentals() throws RecordNotFoundException {
        return new ModelAndView(rentalService.getAllRentals(), "rentals");
    }

    public ModelAndView getReservationsByUserId(Request req) throws RecordNotFoundException {
        return new ModelAndView(reservationService.getReservationsByUserId(req), "userReservations");
    }

    public ModelAndView registerRental() {
        return new ModelAndView(new HashMap<>(), "register_rental");
    }

    public void addRentalReview(Request req) throws RecordNotFoundException{
        rentalService.submitRentalReview(req);
    }

    public void submitRegistration(Request req){
        rentalService.registerRental(req);
    }

    public ModelAndView makeReservation() {
        return new ModelAndView(new HashMap<>(), "/makeReservation");
    }

    public boolean submitReservation(Request req) {
        return reservationService.submitReservation(req);
    }
}
