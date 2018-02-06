package com.codecoool.rental.model;

import javax.persistence.*;
import java.net.URL;

@Entity
@Table(name = "picture")
public class Picture {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "picture_name")
    String pictureName;

    public Picture() {}

    public Picture(String pictureName) {
        this.pictureName = pictureName;
    }

    public void savePicture(){

    }

    public void getPicture(){

    }
}
