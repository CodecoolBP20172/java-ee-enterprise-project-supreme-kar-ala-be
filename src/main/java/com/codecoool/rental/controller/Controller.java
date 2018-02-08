package com.codecoool.rental.controller;

import com.codecoool.rental.RecordNotFoundException;
import com.codecoool.rental.RentalDaoException;
import com.codecoool.rental.model.Facility;
import com.codecoool.rental.model.Rental;
import com.codecoool.rental.model.Reservation;
import com.codecoool.rental.model.Review;
import spark.ModelAndView;
import spark.Request;
import spark.Response;

import javax.persistence.*;
import javax.persistence.criteria.CriteriaBuilder;

import java.util.HashMap;
import java.util.List;
public class Controller {

    public static EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpaexamplePU");
    public static EntityManager em = emf.createEntityManager();

    public static ModelAndView index(Request req, Response res, Integer userId) {
        HashMap<String, Object> params = new HashMap<>();
        return new ModelAndView(params, "index");
    }
    public static ModelAndView writeRentalReview(Request req, Response res) {
        HashMap<String, Object> params = new HashMap<>();
        params.put("id",req.params("id"));

        return new ModelAndView(params, "add_review");
    }



    public static ModelAndView getRental(Request req, Response res) throws RentalDaoException {
        HashMap<String, Object> params = new HashMap<>();
        TypedQuery<Rental> queryResult = em.createNamedQuery("getRental",Rental.class);
        queryResult.setParameter("id",Integer.parseInt(req.params("id")));
        List<Rental> rentals = queryResult.getResultList();

        if (rentals.size() == 0){
            throw new RecordNotFoundException("Could not find any record with a given id " + req.params("id"));
        }

        Rental rental = rentals.get(0);
        params.put("id", rental.getId());
        params.put("name", rental.getName());
        params.put("description", rental.getDescription());
        params.put("price", rental.getPrice());
        params.put("city", rental.getCity());
        params.put("numberOfGuests", rental.getNumOfGuests());
        return new ModelAndView(params, "rental");
    }


    public static ModelAndView getRentals() throws RecordNotFoundException {
        HashMap<String, Object> params = new HashMap<>();

        List<Rental> rentals = em.createNamedQuery("getRentals", Rental.class).getResultList();
        if (rentals.size() == 0) {
            throw new RecordNotFoundException("Could not find any records");
        }
        params.put("rentals", rentals);

        System.out.println(params);

        //TODO: render proper html
        return new ModelAndView(params, "rentals");
    }

    public static ModelAndView getReservationsByUserId(Request req) throws RecordNotFoundException {
        HashMap<String, Object> params = new HashMap<>();

        List<Reservation> reservations = em.createNamedQuery("getReservationsByUserId", Reservation.class)
                .setParameter("userId", Integer.parseInt(req.params("userId")))
                .getResultList();
        if (reservations.size() == 0) {
            throw new RecordNotFoundException("Could not find any record with the given user id " + req.params("userId"));
        }
        params.put("reservations", reservations);

        System.out.println(params);

        //TODO: render proper html
        return new ModelAndView(params, "redirect:/");
    }
    public static ModelAndView registerRental(){
        HashMap<String, Object> params = new HashMap<>();
        return new ModelAndView(params, "register_rental");
    }

    public static void addRentalReview(Request request){
        String text = request.queryParams("review");
        int id = Integer.parseInt(request.queryParams("id"));
        System.out.println(id);
        int rating = Integer.parseInt(request.queryParams("rating"));
        TypedQuery<Rental> queryResult = em.createNamedQuery("getRental",Rental.class);
        queryResult.setParameter("id",id);
        List<Rental> rentals = queryResult.getResultList();

        Rental rental = rentals.get(0);
        Review review = new Review(rating,text);
        review.setRental(rental);
        em.persist(review);
        em.getTransaction().commit();
        em.getTransaction().begin();

    }

    public static void submitRegistration(Request request){
        String name = request.queryParams("title");
        String description = request.queryParams("description");
        String location = request.queryParams("location");
        double price = Double.parseDouble(request.queryParams("price"));
        int numOfGuests = Integer.parseInt(request.queryParams("numOfGuest"));
        int numOfBed = Integer.parseInt(request.queryParams("numOfBed"));
        int numOfRoom = Integer.parseInt(request.queryParams("numOfRoom"));

        Facility facility = new Facility(numOfRoom,numOfBed);
        Rental rental = new Rental(name,description,price,location,numOfGuests);
        rental.setFacility(facility);
        facility.setRental(rental);


        em.persist(facility);
        em.persist(rental);
        em.getTransaction().commit();
        em.getTransaction().begin();
    }







    public static ModelAndView RecordNoTFound(Request req, Response res, Exception e) {
        HashMap<String, Object> params = new HashMap<>();
        params.put("message", e.getMessage());
        return new ModelAndView(params,"errors/error404");
    }

    public static ModelAndView ServerIssue(Request req, Response res, Exception e) {
        HashMap<String, Object> params = new HashMap<>();
        params.put("message", e.getMessage());
        return new ModelAndView(params, "errors/error500");
    }
}
