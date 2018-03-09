package com.codecoool.rental.service;

import com.codecoool.rental.model.*;
import org.springframework.stereotype.Component;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

@Component
public class InitializerBean {

    public InitializerBean(UserService userService, RentalService rentalService, ReservationService reservationService) {

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

        // Creating entities
        User user1 = new User("test user1", "test1@user.com", "user123", "06-30-1234567");
        User user2 = new User("test user2", "test2@user.com", "user456", "06-20-7654321");

        Rental rental1 = new Rental("házikó", "Description", 22.5, "Krakow", 5, user1);
        Rental rental2 = new Rental("kiskunyhó", "Description", 22.5, "Budapest", 5, user1);
        Rental rental3 = new Rental("hídalattó", "Description", 22.5, "Miskolc", 5, user2);

        Reservation reservation1 = new Reservation(3, date1, date2, ReservationType.HOST, user1, rental1);
        Reservation reservation2 = new Reservation(3, date3, date4, ReservationType.GUEST, user1, rental2);
        Reservation reservation3 = new Reservation(2, date5, date6, ReservationType.GUEST, user2, rental1);

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

        // Setting user profile pictures
        Picture picture1user = new Picture("picture_4", "user picture");
        picture1user.setUser(user1);
        Picture picture2user = new Picture("picture_5", "másik user pic");
        picture2user.setUser(user2);
        user1.addPicture(picture1user);
        user2.addPicture(picture2user);

        // Adding rentals to test users
        user1.addRental(rental1);
        user1.addRental(rental2);
        user2.addRental(rental3);

        user1.addReservation(reservation1);
        user1.addReservation(reservation2);
        user2.addReservation(reservation3);

        rental1.addReservation(reservation1);
        rental2.addReservation(reservation2);
        rental1.addReservation(reservation3);

        userService.save(user1);
        userService.save(user2);

        rentalService.save(rental1);
        rentalService.save(rental2);
        rentalService.save(rental3);

        reservationService.save(reservation1);
        reservationService.save(reservation1);
        reservationService.save(reservation1);
    }
}
