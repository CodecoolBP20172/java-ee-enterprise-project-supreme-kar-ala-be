package com.codecoool.rental.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = HttpStatus.BAD_REQUEST, reason = "Bad request")
public class IllegalReservationException extends Exception {

    public IllegalReservationException(String message) {
        super(message);
    }
}
