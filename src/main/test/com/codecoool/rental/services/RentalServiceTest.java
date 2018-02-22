package com.codecoool.rental.services;

import com.codecoool.rental.RecordNotFoundException;
import com.codecoool.rental.model.Rental;
import com.codecoool.rental.model.Review;
import org.junit.Test;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.mockito.InjectMocks;
import org.mockito.Mock;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import static org.junit.Assert.*;

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
    public void getRental() {
    }

    @Test
    public void registerRental() {
    }

    @Test
    public void getAllRentals() {
    }
}