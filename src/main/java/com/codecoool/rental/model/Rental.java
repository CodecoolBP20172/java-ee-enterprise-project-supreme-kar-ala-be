package com.codecoool.rental.model;

import javax.persistence.*;
import java.util.*;

@Entity
@Table(name = "rental")
@NamedQueries({@NamedQuery(name = "getRental",query = "SELECT rental FROM Rental rental WHERE rental.id = :id")})
public class Rental {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "description")
    private String description;

    @Column(name = "price")
    private double price;

    @Column(name = "city")
    private String city;

    @Column(name = "guests")
    private int numOfGuests;

    @OneToMany(mappedBy = "rental")
    private List<Review> review;

    @ElementCollection
    private List<String> reservedPeriod = new ArrayList<>();

    @OneToMany(mappedBy = "rental")
    private List<Picture> picture;

    @OneToOne
    private Amenity amenity;


    @Override
    public String toString() {
        return "Rental{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", city='" + city + '\'' +
                '}';
    }

    @OneToOne
    private Facility facility;

    public Rental() {
    }

    public Rental(String name, String description, double price, String city, int numOfGuests) {
        this.name = name;
        this.description = description;
        this.price = price;
        this.city = city;
        this.numOfGuests = numOfGuests;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getCity() {
        return city;
    }

    public int getNumOfGuests() {
        return numOfGuests;
    }

    public void setNumOfGuests(int numOfGuests) {
        this.numOfGuests = numOfGuests;
    }
}
