package com.codecoool.rental.controller;

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
        //params.put();
        return new ModelAndView(params, "index");
    }
    public static ModelAndView getRental(Request req, Response res, Integer userId) {

        System.out.println(req.params("id"));
        TypedQuery<Rental> queryResult = em.createNamedQuery("getRental",Rental.class);
        queryResult.setParameter("id",1);
        List<Rental> rental = queryResult.getResultList();
        System.out.println(rental);


        HashMap<String, Object> params = new HashMap<>();
        //params.put();
        return new ModelAndView(params, "rental");
    }
}
