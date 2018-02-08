package com.codecoool.rental.model;

import javax.persistence.*;

@Entity
@Table(name = "picture")
public class Picture {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "picture_name")
    private String pictureName;

    @Column(name = "picture_url")
    private String url;

    @ManyToOne(cascade = CascadeType.ALL)
    private Rental rental;

    @ManyToOne(cascade = CascadeType.ALL)
    private User user;

    public Picture() {}

    public Rental getRental() {
        return rental;
    }

    public void setRental(Rental rental) {
        this.rental = rental;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Picture(String pictureName, String url) {
        this.pictureName = pictureName;
        this.url = url;
    }

    public String getPictureName() {
        return pictureName;
    }

    public void setPictureName(String pictureName) {
        this.pictureName = pictureName;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }


}
