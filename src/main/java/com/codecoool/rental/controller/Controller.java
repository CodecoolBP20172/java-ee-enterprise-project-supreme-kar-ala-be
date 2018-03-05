package com.codecoool.rental.controller;

import com.codecoool.rental.exceptions.RecordNotFoundException;
import com.codecoool.rental.exceptions.RentalDaoException;
import com.codecoool.rental.service.RentalService;
import com.codecoool.rental.service.ReservationService;
import com.codecoool.rental.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.HashMap;

@org.springframework.stereotype.Controller
public class Controller {

    @Autowired
    RentalService rentalService;

    @Autowired
    UserService userService;

    @Autowired
    ReservationService reservationService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String mainPage() {
        return "index";
    }

    //TODO: to be handled by ErrorHandler?
    @RequestMapping(value = "/takenReservation,", method = RequestMethod.GET)
    public String takenReservation() {
        return "takenReservation";
    }

    //TODO: Spring based errorHandling

//    public ModelAndView RecordNoTFound(Exception e) {
//        HashMap<String, Object> params = new HashMap<>();
//        params.put("message", e.getMessage());
//        return new ModelAndView(params, "notFound404");
//    }
//
//    public ModelAndView ServerIssue(Exception e) {
//        HashMap<String, Object> params = new HashMap<>();
//        params.put("message", e.getMessage());
//        return new ModelAndView(params, "errors/error500");
//    }

    @RequestMapping(value = "/rental/{rentalId}/add_review", method = RequestMethod.GET)
    public String writeRentalReview(Model model, @RequestParam("rentalId") Integer rentalId) {
        int userId = 1;
        model.addAttribute("rental_id", rentalId);
        model.addAttribute("user_id", userId);
        model.addAttribute("status", "new");
        return "add_review";
    }

    


    public ModelAndView writeRentalReview(R req) {
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
        String pictureUrl = req.queryParams("picture");
        if (pictureUrl.equals("")){
            pictureUrl = "http://placehold.it/900x400";
        }
        //TODO session!!!
        //int user_id = Integer.parseInt("VALAMI AMI LEKÉREI A SESSIONT");
        int user_id = 1;

        boolean hasWifi = req.queryParams("hasWifi") != null;
        boolean hasAirConditioner = req.queryParams("hasAirConditioner") != null;

        rentalService.registerRental(user_id, name, description, location, price, numOfGuests, numOfBed, numOfRoom, hasWifi, hasAirConditioner,pictureUrl);
    }

    public ModelAndView getReservationsByUserId(Request req) throws RecordNotFoundException {
        //TODO session!!!
        //int user_id = Integer.parseInt("VALAMI AMI LEKÉREI A SESSIONT");
        int user_id = 1;
        return new ModelAndView(reservationService.getReservationsByUserId(user_id), "userReservations");
    }

    public ModelAndView makeReservation(Request req) {
        Integer rentalId = Integer.parseInt(req.params(":id"));
        HashMap<String, Integer> params = new HashMap<>();
        params.put("rentalId", rentalId);
        System.out.println(params);
        return new ModelAndView(params, "/makeReservation");
    }

    public boolean submitReservation(Request req) throws RecordNotFoundException {
        // Test user
        Integer userId = 1;
        Integer rentalId = Integer.parseInt(req.params("id"));
        System.out.println(rentalId);
        String startDateInput = req.queryParams("startDate");
        String endDateInput = req.queryParams("endDate");
        Integer numOfPeople = Integer.parseInt(req.queryParams("numberOfPeople"));
        return reservationService.submitReservation(startDateInput, endDateInput, numOfPeople, rentalId, userId);
    }

    public ModelAndView getUpdateRentalReview(Request req) {
        int review_id = Integer.parseInt(req.params("review_id"));

        return new ModelAndView(rentalService.getRentalReviewToUpdate(review_id),"/add_review");
    }

    public void postUpdateRentalReview(Request req){
        int review_id = Integer.parseInt(req.params("review_id"));
        String text = req.queryParams("review");
        double rating = Double.parseDouble(req.queryParams("rating"));

        rentalService.postUpdateRentalReview(text,rating,review_id);
    }
}
