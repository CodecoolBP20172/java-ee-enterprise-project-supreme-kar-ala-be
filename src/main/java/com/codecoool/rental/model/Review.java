package com.codecoool.rental.model;


import javax.persistence.*;

@Entity
@Table(name = "review")
public class Review {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(name = "rating")
    private double rating;

    @Column(name = "text")
    private String text;
    @ManyToOne(cascade = CascadeType.ALL)
    private Rental rental;
    @ManyToOne
    private User user;

    public Review() {
    }

    public Review(double rating, String text) {
        this.rating = rating;
        this.text = text;
    }

    public void setRental(Rental rental) {
        this.rental = rental;
    }

    public double getRating() {

        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
