package com.codecoool.rental.controller;

import com.codecoool.rental.model.Picture;
import com.codecoool.rental.model.Rental;
import com.codecoool.rental.model.User;
import com.codecoool.rental.repository.RentalRepository;
import com.codecoool.rental.service.RentalService;
import com.codecoool.rental.service.ReservationService;
import com.codecoool.rental.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

import java.util.ArrayList;
import java.util.List;

import static org.mockito.BDDMockito.given;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;


@RunWith(SpringRunner.class)
@WebMvcTest(PageController.class)
public class PageControllerTest {

    @Autowired
    private MockMvc mvc;

    @MockBean
    UserService userService;

    @MockBean
    RentalService rentalService;

    @MockBean
    ReservationService reservationService;

    @MockBean
    RentalRepository rentalRepository;


    @Test
    public void getAllRentalsTest() throws Exception {

        User user1 = new User("test user1", "test1@user.com", "user123", "06-30-1234567");
        Rental rental1 = new Rental("házikó", "Description", 22.5, "Bukarest", 5, user1);
        Picture picture1rent = new Picture("picture_1", "http://www.luxe-apartmentsrentals.com/images/stories/italy/luxit24/proprieta_gallery_5699.jpg");
        rental1.addPictures(picture1rent);

        List<Rental> rentals = new ArrayList<>();
        rentals.add(rental1);

        given(rentalService.getAllRentals()).willReturn(rentals);

        mvc.perform(get("/rentals")) .andExpect(status().isOk());

    }
}
