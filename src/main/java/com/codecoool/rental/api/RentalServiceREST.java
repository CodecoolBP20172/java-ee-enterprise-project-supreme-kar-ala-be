package com.codecoool.rental.api;

import com.codecoool.rental.model.Rental;
import com.codecoool.rental.service.RentalService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class RentalServiceREST {

    private RentalService rentalService;

    public RentalServiceREST(RentalService rentalService) {
        this.rentalService = rentalService;
    }

    @GetMapping("/api/rentals")
    public ResponseEntity<List<Rental>> getAllRental() {
        return new ResponseEntity(rentalService.getAllRentals(), HttpStatus.OK);
    }
}
