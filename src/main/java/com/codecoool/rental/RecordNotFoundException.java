package com.codecoool.rental;

public class RecordNotFoundException extends RentalDaoException {

    public RecordNotFoundException(Exception e) {
        super(e);
    }

    public RecordNotFoundException(String message) {
        super(message);
    }
}
