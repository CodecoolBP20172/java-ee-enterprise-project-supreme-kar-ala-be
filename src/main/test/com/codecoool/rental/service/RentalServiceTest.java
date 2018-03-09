package com.codecoool.rental.service;

import com.codecoool.rental.model.Rental;
import com.codecoool.rental.model.Review;
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

import static org.junit.Assert.assertEquals;

@RunWith(SpringRunner.class)
public class RentalServiceTest {

    @TestConfiguration
    static class RentalServiceTestContextConfiguration {

        @Bean
        public RentalService rentalService() {
            return new RentalService();
        }
    }

    @Autowired
    private RentalService rentalService;

    @MockBean
    ReviewRepository reviewRepository;

    @MockBean
    RentalRepository rentalRepository;

    @MockBean
    UserRepository userRepository;

    @MockBean
    ReservationRepository reservationRepository;


    @Before
    public void setUp() {

        Review review1 = new Review();
        review1.setText("awesome");

        Rental rental1 = new Rental();
        rental1.setName("házikó");

        Mockito.when(reviewRepository.findOne(1))
                .thenReturn(review1);

        Mockito.when(rentalRepository.findOne(1))
                .thenReturn(rental1);

    }


    @Test
    public void getRentalReviewToUpdateTest() {

        Review review = rentalService.getRentalReviewToUpdate(1);

        assertEquals("awesome", review.getText());
    }

    @Test
    public void getRentalTest() {

        Rental rental = rentalService.getRental(1);
        assertEquals("házikó", rental.getName());

    }


}