package com.codecoool.rental.service;

import com.codecoool.rental.model.Reservation;
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

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import static org.junit.Assert.*;

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
    public void setUp() throws ParseException {

        User user = new User();
        user.setName("valaki");

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date startDate = sdf.parse("2017-07-21");
        Date endDate = sdf.parse("2017-07-28");

        Reservation reservation1 = new Reservation();
        reservation1.setUser(user);
        reservation1.setStartDate(startDate);
        reservation1.setEndDate(endDate);

        List<Reservation> reservations = new ArrayList<>();
        reservations.add(reservation1);

        Mockito.when(reservationRepository.findAllByUserId(1))
                .thenReturn(reservations);

        Mockito.when(reservationRepository.getReservationsForRentalInPeriod(1, startDate, endDate))
                .thenReturn(reservations);
    }

    @Test
    public void getReservationsByUserIdTest() {

    List<Reservation> reservations = reservationService.getReservationsByUserId(1);

    assertEquals("valaki", reservations.get(0).getUser().getName());
    }

    @Test
    public void isPeriodFreeTestIfNot() throws ParseException {
        assertFalse(reservationService.isPeriodFree("2017-07-21", "2017-07-28", 1));
    }

    @Test
    public void isPeriodFreeTestIfYes() throws ParseException {
        assertTrue(reservationService.isPeriodFree("2020-03-03", "2020-03-28", 1));
    }
}