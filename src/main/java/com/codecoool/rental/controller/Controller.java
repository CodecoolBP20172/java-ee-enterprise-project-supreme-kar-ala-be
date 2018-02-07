package com.codecoool.rental.controller;

import com.codecoool.rental.RecordNotFoundException;
import com.codecoool.rental.RentalDaoException;
import com.codecoool.rental.model.Rental;
import org.hibernate.Transaction;
import spark.Request;
import spark.Response;
import spark.ModelAndView;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import java.util.HashMap;
import java.util.List;

public class Controller {
    public static EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpaexamplePU");
    public static EntityManager em = emf.createEntityManager();



    public static ModelAndView index(Request req, Response res, Integer userId) {

        HashMap<String, Object> params = new HashMap<>();
        return new ModelAndView(params, "index");
    }

    public static ModelAndView getRental(Request req, Response res) throws RentalDaoException {

        TypedQuery<Rental> queryResult = em.createNamedQuery("getRental",Rental.class);
        queryResult.setParameter("id",Integer.parseInt(req.params("id")));
        List<Rental> rentals = queryResult.getResultList();

        HashMap<String, Object> params = new HashMap<>();


        if (rentals.size() == 0){
            throw new RecordNotFoundException("Could not find any record with a given id " + req.params("id"));
        };

        Rental rental = rentals.get(0);

        params.put("id",rental.getId());
        params.put("name",rental.getName());
        params.put("description",rental.getDescription());
        params.put("price",rental.getPrice());
        params.put("city",rental.getCity());
        params.put("numberOfGuests",rental.getNumOfGuests());
        return new ModelAndView(params, "rental");
    }

    public static ModelAndView RecordNoTFound(Request req, Response res, Exception e) {

        HashMap<String, Object> params = new HashMap<>();
        params.put("message", e.getMessage());

        return new ModelAndView(params,"errors/error404");
    }

    public static ModelAndView ServerIssue(Request req, Response res, Exception e) {

        HashMap<String, Object> params = new HashMap<>();
        params.put("message", e.getMessage());

        return new ModelAndView(params,"errors/error500");
    }



}
