package com.codecoool.rental.service;

import com.codecoool.rental.model.Rental;
import com.codecoool.rental.model.Reservation;
import com.codecoool.rental.model.Review;
import com.codecoool.rental.model.User;
import com.codecoool.rental.repository.RentalRepository;
import com.codecoool.rental.repository.ReservationRepository;
import com.codecoool.rental.repository.ReviewRepository;
import com.codecoool.rental.repository.UserRepository;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.TestConfiguration;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Bean;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.*;
import static org.mockito.Mockito.when;

@RunWith(SpringRunner.class)
public class ReservationServiceTest {

    @TestConfiguration
    static class RentalServiceContextConfiguration {

        @Bean
        public ReservationService reservationService() {
            return new ReservationService();
        }
    }



    @Autowired
    private ReservationService reservationService;

    @MockBean
    ReviewRepository reviewRepository;

    @MockBean
    RentalRepository rentalRepository;

    @MockBean
    UserRepository userRepository;

    @MockBean
    ReservationRepository reservationRepository;

    @MockBean
    UserService userService;

    @MockBean
    RentalService rentalService;

    @Before
    public void setUp() {

        User user = new User();
        user.setName("valaki");

        Reservation reservation1 = new Reservation();
        reservation1.setUser(user);

        List<Reservation> reservations = new ArrayList<>();
        reservations.add(reservation1);

        Mockito.when(reservationRepository.findAllByUserId(1))
                .thenReturn(reservations);


    }


    @Test
    public void getReservationsByUserIdTest() {

    List<Reservation> reservations = reservationService.getReservationsByUserId(1);

    assertEquals("valaki", reservations.get(0).getUser().getName());
    }
}