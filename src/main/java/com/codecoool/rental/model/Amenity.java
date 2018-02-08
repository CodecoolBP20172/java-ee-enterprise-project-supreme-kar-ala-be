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

    public Amenity() {
    }

    public Amenity(boolean hasWifi, boolean hasAirCondition) {
        this.hasWifi = hasWifi;
        this.hasAirCondition = hasAirCondition;
    }

    public long getId() {
        return id;
    }

    public Rental getRental() {
        return rental;
    }

    public void setRental(Rental rental) {
        this.rental = rental;
    }

    public boolean hasWifi() {
        return hasWifi;
    }

    public void setWifi(boolean hasWifi) {
        this.hasWifi = hasWifi;
    }

    public boolean hasAirCondition() {
        return hasAirCondition;
    }

    public void setAirCondition(boolean hasAirCondition) {
        this.hasAirCondition = hasAirCondition;
    }
}
