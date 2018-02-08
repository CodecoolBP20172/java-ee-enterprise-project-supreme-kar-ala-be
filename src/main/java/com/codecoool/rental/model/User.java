package com.codecoool.rental.model;

import org.hibernate.annotations.ColumnTransformer;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String name;

    @Column(unique = true, nullable = false)
    private String email;

    //@ColumnTransformer(read = "pgp_sym_decrypt(password, ‘karalábé‘)", write = "pgp_sym_encrypt(?, ‘karalábé‘)")
    private String password;
    private String contacts;

    @OneToMany(mappedBy = "user")
    private List<Reservation> reservations = new ArrayList<>();

    @OneToMany(mappedBy = "user")
    private List<Picture> pictures = new ArrayList<>();

    @OneToMany(mappedBy = "user")
    private List<Rental> rentals = new ArrayList<>();

    public User() {
    }

    public User(String name, String email, String password, String contacts) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.contacts = contacts;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public String getContacts() {
        return contacts;
    }

    public void setContacts(String contacts) {
        this.contacts = contacts;
    }

    public List<Reservation> getReservations() {
        return reservations;
    }

    public void setReservations(Reservation reservation) { this.reservations.add(reservation); }

    public List<Picture> getPictures() {
        return pictures;
    }

    public void setPictures(Picture picture) { this.pictures.add(picture); }

    public List<Rental> getRentals() { return rentals; }

    public void setRentals(Rental rental) { this.rentals.add(rental); }

    @Override
    public String toString() {
        return "id=" + id + ", " +
                "name=" + name;
    }
}
