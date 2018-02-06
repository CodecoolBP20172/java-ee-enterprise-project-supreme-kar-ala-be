package com.codecoool.rental.controller;

import spark.Request;
import spark.Response;
import spark.ModelAndView;

import java.util.HashMap;

public class RentalController {
    public static ModelAndView renderRentals(Request req, Response res, Integer userId) {

        HashMap<String, Object> params = new HashMap<>();
        //params.put();
        return new ModelAndView(params, "index");
    }
}
