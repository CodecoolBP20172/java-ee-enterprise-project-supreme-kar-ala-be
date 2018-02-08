import com.codecoool.rental.RecordNotFoundException;
import com.codecoool.rental.RentalDaoException;
import com.codecoool.rental.controller.Controller;
import com.codecoool.rental.model.*;
import spark.Request;
import spark.Response;
import spark.template.thymeleaf.ThymeleafTemplateEngine;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import static spark.Spark.*;
import static spark.debug.DebugScreen.enableDebugScreen;

public class Main {

    //TODO refactor
    public static Integer userId = 1;

    public static void main(String[] args) {
        // default server settings
        exception(Exception.class, (e, req, res) -> e.printStackTrace());
        staticFileLocation("/public");
        port(8888);

        get("/", (Request req, Response res) ->
                new ThymeleafTemplateEngine().render(Controller.index(req, res, userId) ));
        get("/rental/:id", (Request req, Response res) ->
                new ThymeleafTemplateEngine().render(Controller.getRental(req, res) ));
        get("/rentals", (Request req, Response res) ->
                new ThymeleafTemplateEngine().render(Controller.getRentals()));
        get("/register-rental", (Request req, Response res) ->
                new ThymeleafTemplateEngine().render(Controller.registerRental()));
        get("/user/:userId/reservations", (Request req, Response res) ->
                new ThymeleafTemplateEngine().render(Controller.getReservationsByUserId(req)));
        post("/register-rental", (Request req, Response res) -> {
            Controller.submitRegistration(req);
            res.redirect("/");
            return "";
        });
        get("/rental/:id/make-reservation", (Request req, Response res) ->
            new ThymeleafTemplateEngine().render(Controller.makeReservation(req)));

        exception(RecordNotFoundException.class, (e, req, res) -> {

            res.body(new ThymeleafTemplateEngine().render(Controller.RecordNoTFound(req, res, e)));
            res.status(404);
        });

        exception(RentalDaoException.class, (e, req, res) -> {
            res.body(new ThymeleafTemplateEngine().render(Controller.ServerIssue(req, res, e)));
            res.status(500);
        });

        enableDebugScreen();

        populateData();
    }

    public static void populateData() {

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

        Rental rental1 = new Rental("Rental name","Description",22.5,"Bukarest",5);
        Rental rental2 = new Rental("Rental2 name","Description",22.5,"Bukarest",5);
        Rental rental3 = new Rental("Rental3 name","Description",22.5,"Bukarest",5);

        ReservationPeriod reservationPeriod1 = new ReservationPeriodGuest(date1, date2);
        ReservationPeriod reservationPeriod2 = new ReservationPeriodGuest(date3, date4);
        ReservationPeriod reservationPeriod3 = new ReservationPeriodGuest(date5, date6);

        Reservation reservation1 = new Reservation(3, reservationPeriod1, user1, rental1);
        Reservation reservation2 = new Reservation(3, reservationPeriod2, user1, rental2);
        Reservation reservation3 = new Reservation(2, reservationPeriod3, user2, rental1);

        Amenity amenity1 = new Amenity(true, true);
        Amenity amenity2 = new Amenity(true, false);

        Picture picture1rent = new Picture("picture_1","ez egy url");
        Picture picture2rent = new Picture("picture_2","ez egy másik");
        Picture picture3rent = new Picture("picture_3","VVVVVVTTTTTT");

        Picture picture1user = new Picture("picture_4","user picture");
        Picture picture2user = new Picture("picture_5","másik user pic");

        user1.setRentals(rental1);
        user1.setRentals(rental2);
        user2.setRentals(rental3);

        user1.setReservations(reservation1);
        user1.setReservations(reservation2);
        user2.setReservations(reservation3);

        user1.setPictures(picture1user);
        user2.setPictures(picture2user);

        //rental1.setFacility();
        //rental1.setReview();

        rental1.setAmenity(amenity1);
        rental2.setAmenity(amenity2);
        rental3.setAmenity(amenity1);

        rental1.setPictures(picture1rent);
        rental1.setPictures(picture3rent);
        rental2.setPictures(picture2rent);


        Controller.em.getTransaction().begin();

        Controller.em.persist(user1);
        Controller.em.persist(user2);
        Controller.em.persist(rental1);
        Controller.em.persist(rental2);
        Controller.em.persist(rental3);
        Controller.em.persist(reservationPeriod1);
        Controller.em.persist(reservationPeriod2);
        Controller.em.persist(reservationPeriod3);
        Controller.em.persist(reservation1);
        Controller.em.persist(reservation2);
        Controller.em.persist(reservation3);
        Controller.em.persist(amenity1);
        Controller.em.persist(amenity2);
        Controller.em.persist(picture1rent);
        Controller.em.persist(picture2rent);
        Controller.em.persist(picture3rent);
        Controller.em.persist(picture1user);
        Controller.em.persist(picture2user);

        Controller.em.getTransaction().commit();
        Controller.em.getTransaction().begin();
    }
}
