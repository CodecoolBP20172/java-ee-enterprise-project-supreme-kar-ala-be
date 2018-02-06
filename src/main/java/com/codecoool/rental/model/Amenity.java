package com.codecoool.rental.model;

import com.sun.istack.internal.NotNull;

import javax.persistence.*;

@Entity
public class Amenity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @OneToOne(mappedBy = "amenity")
    private Rental rental;


    @NotNull
    private boolean hasWifi;

    @NotNull
    private boolean hasAirCondition;


}
