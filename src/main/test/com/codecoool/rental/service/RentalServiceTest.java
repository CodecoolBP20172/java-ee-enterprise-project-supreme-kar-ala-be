package com.codecoool.rental.service;

import com.codecoool.rental.exceptions.RecordNotFoundException;
import com.codecoool.rental.model.Review;
import org.junit.Test;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import static org.junit.Assert.assertEquals;
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

        em.close();
        emf.close();
    }

    @Test
    public void getRentalTest() throws RecordNotFoundException {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("karalabeTest");
        EntityManager em = emf.createEntityManager();
        this.rentalServiceTest = new RentalService(em);

        assertEquals(1, rentalServiceTest.getRental(1).get("id"));

        em.close();
        emf.close();
    }

    @Test
    public void getRentalThrowsRecordNotFoundExceptionTest() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("karalabeTest");
        EntityManager em = emf.createEntityManager();
        this.rentalServiceTest = new RentalService(em);

        assertThrows(RecordNotFoundException.class, () -> rentalServiceTest.getRental(1000));

        em.close();
        emf.close();
    }
}