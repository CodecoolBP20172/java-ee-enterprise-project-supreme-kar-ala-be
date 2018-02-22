package com.codecoool.rental.model;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class RentalTest {

    @Mock
    private User userMock;

    @InjectMocks
    private Rental rentalTest;

    @Test
    public void getRatingTest() {
        Rental rentalTest = new Rental("házikó", "Description", 22.5, "Bukarest", 5, userMock);
        assertEquals(5.0, rentalTest.getRating());

    }

    @Test
    public void getOwnerIdTest() {
        when(userMock.getId()).thenReturn(1);
        assertEquals(userMock.getId(), rentalTest.getOwnerId());
    }

    @Test
    public void getReviewsTest() {
    }

    @Test
    public void getNameTest() {
    }

    @Test
    public void getCityTest() {
    }

    @Test
    public void getUserTest() {
    }

    @Test
    public void getReservationsTest() {
    }

    @Test
    public void addReservationTest() {
    }

    @Test
    public void addReviewTest() {
    }
}