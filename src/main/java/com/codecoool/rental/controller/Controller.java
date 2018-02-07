package com.codecoool.rental.controller;

import com.codecoool.rental.model.Rental;
import com.sun.org.apache.xpath.internal.operations.Mod;
import spark.ModelAndView;
import spark.Request;
import spark.Response;

import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.xml.bind.SchemaOutputResolver;
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

    public static ModelAndView getRental(Request req, Response res) {
        HashMap<String, Object> params = new HashMap<>();

        System.out.println(req.params("id"));

        List<Rental> rentals = em
                .createNamedQuery("getRental", Rental.class)
                .setParameter("id", Integer.parseInt(req.params("id")))
                .getResultList();

        if (rentals.size() == 0) {
            return new ModelAndView(params, "notFound");
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

    public static ModelAndView getRentals() {
        HashMap<String, Object> params = new HashMap<>();

        List<Rental> rentals = em
                .createNamedQuery("getRentals", Rental.class)
                .getResultList();
        if (rentals.size() == 0) {
            return new ModelAndView(params, "no rentals found");
        }
        params.put("rentals", rentals);
        System.out.println(params);
        return new ModelAndView(params, "rentals");
    }
}
