package com.codecoool.rental.model;

import javax.persistence.*;

@Entity
@Table(name = "facility")
public class Facility {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "rooms")
    private int rooms;

    @Column(name = "beds")
    private int beds;

    public void setRental(Rental rental) {
        this.rental = rental;
    }

    @OneToOne(mappedBy = "facility")
    private Rental rental;

    public Facility() {
    }

    public Facility(int rooms, int beds) {
        this.rooms = rooms;
        this.beds = beds;
    }

    public int getId() {
        return id;
    }

    public int getRooms() {
        return rooms;
    }

    public int getBeds() {
        return beds;
    }

    public void setRooms(int rooms) {
        this.rooms = rooms;
    }

    public void setBeds(int beds) {
        this.beds = beds;
    }

    @Override
    public String toString() {
        return "Facility{" +
                "id=" + id +
                ", rooms=" + rooms +
                ", beds=" + beds +
                '}';
    }
}
