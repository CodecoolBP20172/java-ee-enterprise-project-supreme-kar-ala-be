package com.codecoool.rental.exceptions;

public class RentalDaoException extends Exception {

    public RentalDaoException(Exception e) {
        super(e);
    }

    public RentalDaoException(String message) {
        super(message);
    }
}
