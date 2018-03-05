package com.codecoool.rental.service;

import com.codecoool.rental.model.*;
import com.codecoool.rental.repository.UserRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

@Component
public class InitializerBean {

    public InitializerBean(UserService userService, RentalService rentalService, ReservationPeriodService reservationPeriodService, ReservationService reservationService) {

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date date1 = Calendar.getInstance().getTime();
        java.util.Date date2 = Calendar.getInstance().getTime();
        java.util.Date date3 = Calendar.getInstance().getTime();
        java.util.Date date4 = Calendar.getInstance().getTime();
        java.util.Date date5 = Calendar.getInstance().getTime();
        java.util.Date date6 = Calendar.getInstance().getTime();
        try {
            date1 = sdf.parse("2017-07-21");
            date2 = sdf.parse("2017-07-28");
            date3 = sdf.parse("2017-10-8");
            date4 = sdf.parse("2017-10-10");
            date5 = sdf.parse("2017-07-29");
            date6 = sdf.parse("2017-08-01");
        } catch (ParseException e) {
            e.printStackTrace();
        }

        User user1 = new User("user name", "user@user.com", "user123", "06-03-1234");
        User user2 = new User("new user2", "user2222@user.com", "xcvbn", "11-11-9999");

        Rental rental1 = new Rental("házikó", "Description", 22.5, "Bukarest", 5, user1);
        Rental rental2 = new Rental("kiskunyhó", "Description", 22.5, "Bukarest", 5, user1);
        Rental rental3 = new Rental("hídalattó", "Description", 22.5, "Bukarest", 5, user2);

        ReservationPeriod reservationPeriod1 = new ReservationPeriodGuest(date1, date2);
        ReservationPeriod reservationPeriod2 = new ReservationPeriodGuest(date3, date4);
        ReservationPeriod reservationPeriod3 = new ReservationPeriodGuest(date5, date6);

        Reservation reservation1 = new Reservation(3, reservationPeriod1, user1, rental1);
        Reservation reservation2 = new Reservation(3, reservationPeriod2, user1, rental2);
        Reservation reservation3 = new Reservation(2, reservationPeriod3, user2, rental1);

        Amenity amenity1 = new Amenity(true, true);
        Amenity amenity2 = new Amenity(true, false);
        rental1.setAmenity(amenity1);
        rental2.setAmenity(amenity2);

        Facility facility1 = new Facility(2, 3);
        Facility facility2 = new Facility(4, 7);
        Facility facility3 = new Facility(1, 2);
        rental1.setFacility(facility1);
        rental2.setFacility(facility2);
        rental3.setFacility(facility3);

        Picture picture1rent = new Picture("picture_1", "http://www.luxe-apartmentsrentals.com/images/stories/italy/luxit24/proprieta_gallery_5699.jpg");
        picture1rent.setRental(rental1);
        Picture picture2rent = new Picture("picture_2", "https://www.thepinnaclelist.com/wp-content/uploads/2016/08/01-OVD-919-Luxury-Villa-Ocean-View-Dr-Bantry-Bay-Cape-Town-South-Africa.jpg");
        picture2rent.setRental(rental2);
        Picture picture3rent = new Picture("picture_3", "https://www.thepinnaclelist.com/wp-content/uploads/2016/08/000a-Villa-Bond-Luxury-Residence-8-First-Crescent-Camps-Bay-South-Africa.jpg");
        picture3rent.setRental(rental3);
        rental1.addPictures(picture1rent);
        rental2.addPictures(picture2rent);
        rental2.addPictures(picture3rent);


        Picture picture1user = new Picture("picture_4", "user picture");
        picture1user.setUser(user1);
        Picture picture2user = new Picture("picture_5", "másik user pic");
        picture2user.setUser(user2);
        user1.setPictures(picture1user);
        user2.setPictures(picture2user);


        user1.setRentals(rental1);
        user1.setRentals(rental2);
        user2.setRentals(rental3);

        user1.setReservations(reservation1);
        user1.setReservations(reservation2);
        user2.setReservations(reservation3);

        rental1.addReservation(reservation1);
        rental2.addReservation(reservation2);
        rental1.addReservation(reservation3);

        userService.save(user1);
        userService.save(user2);

        rentalService.save(rental1);
        rentalService.save(rental2);
        rentalService.save(rental3);

        reservationPeriodService.save(reservationPeriod1);
        reservationPeriodService.save(reservationPeriod2);
        reservationPeriodService.save(reservationPeriod3);

        reservationService.save(reservation1);
        reservationService.save(reservation1);
        reservationService.save(reservation1);

    }
}
