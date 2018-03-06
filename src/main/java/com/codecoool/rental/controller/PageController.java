package com.codecoool.rental.controller;

import com.codecoool.rental.model.Rental;
import com.codecoool.rental.service.RentalService;
import com.codecoool.rental.service.ReservationService;
import com.codecoool.rental.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class PageController {

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
    public String writeRentalReview(Model model, @PathVariable("rentalId") Integer rentalId) {
        int userId = 1;
        model.addAttribute("rental_id", rentalId);
        model.addAttribute("user_id", userId);
        model.addAttribute("status", "new");
        return "add_review";
    }

    @RequestMapping(value = "/rental/{rentalId}/add_review", method = RequestMethod.POST)
    public String submitRentalReview(Model model,
                                     @PathVariable("rentalId") Integer rentalId,
                                     @RequestParam("review") String review,
                                     @RequestParam("rating") Integer rating) {
        int userId = 1;
        rentalService.submitRentalReview(review, rentalId, rating, userId);
        return "redirect:rental";
    }

    @RequestMapping(value = "/rental/{rentalId}", method = RequestMethod.GET)
    public String getRental(Model model, @PathVariable("rentalId") Integer rentalId) {
       Rental rental = rentalService.getRental(rentalId);
       model.addAttribute("rental", rental);
        return "rental";
    }

    @RequestMapping(value = "/rentals", method = RequestMethod.GET)
    public String getAllRentals(Model model) {
        List<Rental> rentals = rentalService.getAllRentals();
        model.addAttribute("rentals", rentals);
        return "rentals";
    }

    @RequestMapping(value = "/rental/{rentalId}/register_rental", method = RequestMethod.GET)
    public String getAllRentals() {
        return "register_rental";
    }

    @RequestMapping(value = "/rentals/register_rental", method = RequestMethod.POST)
    public String submitRegistration(@RequestParam("name") String name,
                                     @RequestParam("description") String description,
                                     @RequestParam("location") String location,
                                     @RequestParam("price") String price,
                                     @RequestParam("numOfGuest") String numOfGuest,
                                     @RequestParam("numOfBed") String numOfBed,
                                     @RequestParam("numOfRoom") String numOfRoom,
                                     @RequestParam("picture") String pictureUrl,
                                     @RequestParam("hasWifi") String hasWifi,
                                     @RequestParam("hasAirConditioner") String hasAirConditioner)
    {
        int user_id = 1;
        rentalService.registerRental(user_id, name, description, location, price, numOfGuest, numOfBed, numOfRoom, hasWifi, hasAirConditioner, pictureUrl);
        return "redirect:/rentals";
    }

    @RequestMapping(value = "/user/reservations", method = RequestMethod.GET)
    public String getReservationsByUserId(Model model) {
        int user_id = 1;
        model.addAttribute("reservations", reservationService.getReservationsByUserId(user_id));
        return "userReservations";
    }

    @RequestMapping(value = "/rental/{rentalId}/make_reservation", method = RequestMethod.GET)
    public String makeReservation(Model model, @PathVariable("rentalId") Integer rentalId) {
        model.addAttribute("rentalId", rentalId);
        return "makeReservation";
    }

    @RequestMapping(value = "/rental/{rentalId}/submit_reservation", method = RequestMethod.POST)
    public String submitReservation(Model model,
                                    @PathVariable("rentalId") Integer rentalId,
                                    @RequestParam("startDate") String startDate,
                                    @RequestParam("endDate") String endDate,
                                    //TODO átkasztolja-e Inté stringet?
                                    @RequestParam("numberOfPeople" ) Integer numberOfPeople)
    {
        Integer userId = 1;

        if (reservationService.submitReservation(startDate, endDate, numberOfPeople, rentalId, userId)) return "redirect:rental";
        else return "takenReservation";
    }

    @RequestMapping(value = "/update_review/{reviewId}", method = RequestMethod.GET)
    public String getUpdateRentalReview(Model model, @PathVariable("reviewId") Integer reviewId) {
        model.addAttribute("review", rentalService.getRentalReviewToUpdate(reviewId));
        model.addAttribute("status", "update");
        return "add_review";
    }

    @RequestMapping(value = "/update_review/{reviewId}", method = RequestMethod.POST)
    public void postUpdateRentalReview(
            @PathVariable("reviewId") Integer reviewId,
            @RequestParam("review") String review,
            @RequestParam("rating") Double rating){

        rentalService.postUpdateRentalReview(review, rating,reviewId);
    }
}
