package com.codecoool.rental.model;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class RentalTest {

    @Mock
    private User userMock;

    @Mock
    private Review reviewMock;

    @Mock
    private Reservation reservationMock;

    @InjectMocks
    private Rental rentalTest;

    @Test
    public void getRatingTest() {
        rentalTest.setRating(5.0);
        assertEquals(5.0, rentalTest.getRating());
    }

    @Test
    public void getOwnerIdTest() {
        when(userMock.getId()).thenReturn(1);
        assertEquals(userMock.getId(), rentalTest.getOwnerId());
    }

    @Test
    public void getReviewsTest() {
        List<Review> reviewMocks = new ArrayList<>(Arrays.asList(reviewMock));
        rentalTest.addReview(reviewMock);
        assertEquals(reviewMocks, rentalTest.getReviews());
    }

    @Test
    public void addReservationTest() {
        rentalTest.addReservation(reservationMock);
        assertEquals(reservationMock, rentalTest.getReservations().get(0));
    }
}