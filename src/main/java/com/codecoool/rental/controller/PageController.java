package com.codecoool.rental.controller;

import com.codecoool.rental.exception.IllegalReservationException;
import com.codecoool.rental.model.Rental;
import com.codecoool.rental.service.RentalService;
import com.codecoool.rental.service.ReservationService;
import com.codecoool.rental.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
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

    @ResponseStatus(value = HttpStatus.NOT_FOUND, reason = "The requested page can not be found.")
    @ExceptionHandler(Exception.class)
    public String exceptionHandler(HttpServletRequest requestAttributes, Exception e, Model model) {
        model.addAttribute("title", e.getLocalizedMessage());
        model.addAttribute("message", e.getMessage());
        return "exceptionHandler";
    }

    @ResponseStatus(value = HttpStatus.BAD_REQUEST)
    @ExceptionHandler(IllegalReservationException.class)
    public String illegalReservationExceptionHandler(HttpServletRequest request, IllegalReservationException e, Model model) {
        model.addAttribute("title", "Bad Request");
        model.addAttribute("status", 409);
        model.addAttribute("message", e.getMessage());
        return "exceptionHandler";
    }

    // This is for testing purposes.
    @RequestMapping("/exception")
    public String raiseException() throws Exception {
        throw new IllegalReservationException("That time period is already reserved, please choose another one.");
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

    @RequestMapping(value = "/register-rental", method = RequestMethod.GET)
    public String getAllRentals() {
        return "register_rental";
    }

    @RequestMapping(value = "/register-rental", method = RequestMethod.POST)
    public String submitRegistration(@RequestParam("name") String name,
                                     @RequestParam("description") String description,
                                     @RequestParam("location") String location,
                                     @RequestParam("price") String price,
                                     @RequestParam("numOfGuest") String numOfGuest,
                                     @RequestParam("numOfBed") String numOfBed,
                                     @RequestParam("numOfRoom") String numOfRoom,
                                     @RequestParam("picture") String pictureUrl,
                                     @RequestParam("hasWifi") String hasWifi,
                                     @RequestParam("hasAirConditioner") String hasAirConditioner) {
        int userId = 1;
        rentalService.registerRental(userId, name, description, location, price, numOfGuest, numOfBed, numOfRoom, pictureUrl, hasWifi, hasAirConditioner);
        return "redirect:";
    }

    @RequestMapping(value = "/user/reservations", method = RequestMethod.GET)
    public String getReservationsByUserId(Model model) {
        int userId = 1;
        model.addAttribute("reservations", reservationService.getReservationsByUserId(userId));
        return "userReservations";
    }

    @RequestMapping(value = "/rental/{rentalId}/make-reservation", method = RequestMethod.GET)
    public String makeReservation(Model model, @PathVariable("rentalId") Integer rentalId) {
        model.addAttribute("rentalId", rentalId);
        return "makeReservation";
    }

    @RequestMapping(value = "/rental/{rentalId}/submit-reservation", method = RequestMethod.POST)
    public String submitReservation(@PathVariable("rentalId") Integer rentalId,
                                    @RequestParam("startDate") String startDate,
                                    @RequestParam("endDate") String endDate,
                                    @RequestParam("numberOfPeople") Integer numberOfPeople) throws IllegalReservationException {
        Integer userId = 1;

        if (reservationService.isPeriodFree(startDate, endDate, rentalId)) {
            reservationService.submitReservation(startDate, endDate, numberOfPeople, rentalId, userId);
            return "redirect:/rentals";
        }
        throw new IllegalReservationException("That time period is already reserved, please choose another one.");
    }

    @RequestMapping(value = "/rental/{rentalId}/add-review", method = RequestMethod.GET)
    public String writeRentalReview(Model model, @PathVariable("rentalId") Integer rentalId) {
        int userId = 1;
        model.addAttribute("rental_id", rentalId);
        model.addAttribute("user_id", userId);
        model.addAttribute("status", "new");
        return "add_review";
    }

    @RequestMapping(value = "/rental/{rentalId}/add-review", method = RequestMethod.POST)
    public String submitRentalReview(Model model,
                                     @PathVariable("rentalId") Integer rentalId,
                                     @RequestParam("review") String review,
                                     @RequestParam("rating") Integer rating) {
        int userId = 1;
        rentalService.submitRentalReview(review, rentalId, rating, userId);
        return "redirect:";
    }

    @RequestMapping(value = "rental/{rentalId}/update-review/{reviewId}", method = RequestMethod.GET)
    public String getUpdateRentalReview(Model model,
                                        @PathVariable("reviewId") Integer reviewId,
                                        @PathVariable("rentalId") Integer rentalId) {
        model.addAttribute("review", rentalService.getRentalReviewToUpdate(reviewId));
        model.addAttribute("rental_id", rentalId);
        model.addAttribute("status", "update");
        return "add_review";
    }

    @RequestMapping(value = "/update-review/{reviewId}", method = RequestMethod.POST)
    public String postUpdateRentalReview(
            @PathVariable("reviewId") Integer reviewId,
            @RequestParam("review") String review,
            @RequestParam("rating") Double rating) {
        rentalService.postUpdateRentalReview(review, rating, reviewId);
        return "redirect:/rentals";
    }
}
