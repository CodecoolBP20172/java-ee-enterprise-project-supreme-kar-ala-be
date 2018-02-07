import com.codecoool.rental.RecordNotFoundException;
import com.codecoool.rental.RentalDaoException;
import com.codecoool.rental.controller.Controller;
import com.codecoool.rental.model.Amenity;
import com.codecoool.rental.model.Rental;
import com.codecoool.rental.model.Reservation;
import com.codecoool.rental.model.User;
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
        get("/user/:userId/reservations", (Request req, Response res) ->
                new ThymeleafTemplateEngine().render(Controller.getReservationsByUserId(req)));

        exception(RecordNotFoundException.class, (e, req, res) -> {

            res.body(new ThymeleafTemplateEngine().render(Controller.RecordNoTFound(req, res, e)));
            res.status(404);
        });

        exception(RentalDaoException.class, (e, req, res) -> {
            res.body(new ThymeleafTemplateEngine().render(Controller.ServerIssue(req, res, e)));
            res.status(500);
        });

        enableDebugScreen();

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date date1 = Calendar.getInstance().getTime();
        java.util.Date date2 = Calendar.getInstance().getTime();
        java.util.Date date3 = Calendar.getInstance().getTime();
        java.util.Date date4 = Calendar.getInstance().getTime();
        try {
            date1 = sdf.parse("2017-07-21");
            date2 = sdf.parse("2017-07-28");
            date3 = sdf.parse("2017-10-8");
            date4 = sdf.parse("2017-10-10");
        } catch (ParseException e) {
            e.printStackTrace();
        }

        Rental rental = new Rental("Rental name","Description",22.5,"Bukarest",5);
        Rental rental2 = new Rental("Rental2 name","Description",22.5,"Bukarest",5);
        Rental rental3 = new Rental("Rental3 name","Description",22.5,"Bukarest",5);
        User user1 = new User("user name", "user@user.com", "user123", "06-123-1234");

        Reservation reservation1 = new Reservation(3, date1, date2, user1, rental);
        Reservation reservation2 = new Reservation(3, date3, date4, user1, rental2);
        Reservation reservation3 = new Reservation(2, date2, date2, user1, rental);

        Amenity amenity = new Amenity(rental, true, true);
        Amenity amenity2 = new Amenity(rental2, true, false);

        Controller.em.getTransaction().begin();
        Controller.em.persist(rental);
        Controller.em.persist(rental2);
        Controller.em.persist(rental3);
        Controller.em.persist(user1);
        Controller.em.persist(reservation1);
        Controller.em.persist(reservation2);
        Controller.em.persist(reservation3);
        Controller.em.persist(amenity);
        Controller.em.persist(amenity2);
        Controller.em.getTransaction().commit();
        Controller.em.getTransaction().begin();
    }
}
