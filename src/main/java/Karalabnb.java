import com.codecoool.rental.RecordNotFoundException;
import com.codecoool.rental.RentalDaoException;
import com.codecoool.rental.controller.Controller;
import com.codecoool.rental.model.*;
import spark.Request;
import spark.Response;
import spark.template.thymeleaf.ThymeleafTemplateEngine;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import static spark.Spark.*;
import static spark.debug.DebugScreen.enableDebugScreen;

public class Karalabnb {

    Controller controller;

    public Karalabnb() {
        this.controller = Controller.getInstance();
    }

    public static void main(String[] args) {
        Karalabnb karalabnb = new Karalabnb();
        karalabnb.start();
        karalabnb.populateData();
    }

    public void start() {
        // default server settings
        exception(Exception.class, (e, req, res) -> e.printStackTrace());
        staticFileLocation("/public");
        port(8888);

        get("/", (Request req, Response res) ->
                new ThymeleafTemplateEngine().render(controller.index()));
        get("/rental/:id", (Request req, Response res) ->
                new ThymeleafTemplateEngine().render(controller.getRental(req)));
        get("/rental/:id/add-review", (Request req, Response res) ->
                new ThymeleafTemplateEngine().render(controller.writeRentalReview(req)));
        get("/update-review/:review_id", (Request req, Response res) ->
                new ThymeleafTemplateEngine().render(controller.getUpdateRentalReview(req)));
        get("/rentals", (Request req, Response res) ->
                new ThymeleafTemplateEngine().render(controller.getAllRentals()));
        get("/register-rental", (Request req, Response res) ->
                new ThymeleafTemplateEngine().render(controller.registerRental()));
        get("/user/reservations", (Request req, Response res) ->
                new ThymeleafTemplateEngine().render(controller.getReservationsByUserId(req)));
        post("/register-rental", (Request req, Response res) -> {
            controller.submitRegistration(req);
            res.redirect("/");
            return "";
        });
        get("/rental/:id/make-reservation", (Request req, Response res) ->
                new ThymeleafTemplateEngine().render(controller.makeReservation(req)));
        post("/add-review", (Request req, Response res) -> {
            controller.submitRentalReview(req);
            res.redirect("/");
            return "";
        });
        post("/update-review/:review_id", (Request req, Response res) -> {
            controller.postUpdateRentalReview(req);
            res.redirect("/");
            return "";
        });

        exception(RecordNotFoundException.class, (e, req, res) -> {

            res.body(new ThymeleafTemplateEngine().render(controller.RecordNoTFound(e)));
            res.status(404);
        });

        post("/rental/:id/submit-reservation", (Request req, Response res) -> {
            if (controller.submitReservation(req)) {
                res.redirect("/");
            } else {
                res.redirect("/errors/error404");
            }
            return "";
        });

        exception(RentalDaoException.class, (e, req, res) -> {
            res.body(new ThymeleafTemplateEngine().render(controller.ServerIssue(e)));
            res.status(500);
        });

        exception(NumberFormatException.class, (e, req, res) -> {
            res.body(new ThymeleafTemplateEngine().render(controller.RecordNoTFound(e)));
            res.status(404);
        });

        enableDebugScreen();
    }

    public void populateData() {

        EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpaexamplePU");
        EntityManager eman = emf.createEntityManager();

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

        Picture picture1rent = new Picture("picture_1", "ez egy url");
        picture1rent.setRental(rental1);
        Picture picture2rent = new Picture("picture_2", "ez egy másik");
        picture2rent.setRental(rental2);
        Picture picture3rent = new Picture("picture_3", "VVVVVVTTTTTT");
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

        eman.getTransaction().begin();

        eman.persist(user1);
        eman.persist(user2);

        eman.persist(rental1);
        eman.persist(rental2);
        eman.persist(rental3);

        eman.persist(reservationPeriod1);
        eman.persist(reservationPeriod2);
        eman.persist(reservationPeriod3);

        eman.persist(reservation1);
        eman.persist(reservation2);
        eman.persist(reservation3);

        eman.getTransaction().commit();
    }
}
