package com.codecoool.rental.services;

import com.codecoool.rental.exceptions.RecordNotFoundException;
import com.codecoool.rental.model.Rental;
import com.codecoool.rental.model.Reservation;
import com.codecoool.rental.model.ReservationPeriod;
import com.codecoool.rental.model.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class ReservationServiceTest {

    private ReservationService reservationServiceTest;

    @InjectMocks
    private Reservation reservation;

    @Mock
    private Rental rentalMock;

    @Mock
    private User userMock;

    @Mock
    private ReservationPeriod reservationPeriodMock;


    @Test
    public void submitReservationTest() throws RecordNotFoundException {
        // Yes Miki, we tried
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("karalabeTest");
        EntityManager em = emf.createEntityManager();
        this.reservationServiceTest = new ReservationService(em);

        assertFalse(reservationServiceTest.submitReservation("2017-07-21", "2017-07-28", 3, 1, 1));

        em.close();
        emf.close();
    }

    @Test
    public void getReservationsByUserId() throws RecordNotFoundException {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("karalabeTest");
        EntityManager em = emf.createEntityManager();
        this.reservationServiceTest = new ReservationService(em);

        when(userMock.getId()).thenReturn(1);
        assertEquals(1, reservationServiceTest.getReservationsByUserId(userMock.getId()).size());

        em.close();
        emf.close();
    }
}