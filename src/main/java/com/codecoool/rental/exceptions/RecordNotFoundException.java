package com.codecoool.rental.exceptions;

public class RecordNotFoundException extends RentalDaoException {

    public RecordNotFoundException(Exception e) {
        super(e);
    }

    public RecordNotFoundException(String message) {
        super(message);
    }
}
