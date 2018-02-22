package com.codecoool.rental.services;

import com.codecoool.rental.RecordNotFoundException;
import com.codecoool.rental.model.Rental;
import com.codecoool.rental.model.Review;
import org.junit.Test;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.mockito.InjectMocks;
import org.mockito.Mock;

import javax.naming.ldap.HasControls;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import static org.junit.Assert.*;
import static org.junit.jupiter.api.Assertions.assertThrows;

public class RentalServiceTest {

    private RentalService rentalServiceTest;

    @Test
    public void submitRentalReviewTest() throws RecordNotFoundException {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("karalabeTest");
        EntityManager em = emf.createEntityManager();
        this.rentalServiceTest = new RentalService(em);

        rentalServiceTest.submitRentalReview("awesome", 1, 5, 1);
        TypedQuery<Review> typedQuery = rentalServiceTest.em.createNamedQuery("getReviewById", Review.class).setParameter("id", 1);
        Review testReview = typedQuery.getSingleResult();
        assertEquals("awesome",testReview.getText());
    }

    @Test
    public void getUpdateRentalReview() {
    }

    @Test
    public void postUpdateRentalReview() {
    }

    @Test
    public void getRentalTest() throws RecordNotFoundException {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("karalabeTest");
        EntityManager em = emf.createEntityManager();
        this.rentalServiceTest = new RentalService(em);

        assertEquals(1, rentalServiceTest.getRental(1).get("id"));
    }

    @Test
    public void getRentalThrowsRecordNotFoundExceptionTest() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("karalabeTest");
        EntityManager em = emf.createEntityManager();
        this.rentalServiceTest = new RentalService(em);

        assertThrows(RecordNotFoundException.class, () -> rentalServiceTest.getRental(1000));
    }

    @Test
    public void registerRental() {
    }

    @Test
    public void getAllRentals() {
    }
}