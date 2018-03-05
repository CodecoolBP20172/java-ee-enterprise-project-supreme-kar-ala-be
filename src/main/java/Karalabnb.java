import com.codecoool.rental.exceptions.RecordNotFoundException;
import com.codecoool.rental.exceptions.RentalDaoException;
import com.codecoool.rental.controller.Controller;
import com.codecoool.rental.model.*;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
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

@SpringBootApplication
public class Karalabnb {

    public static void main(String[] args) {
        SpringApplication.run(Karalabnb.class, args);
    }

    public void start() {
        // default server settings
        exception(Exception.class, (e, req, res) -> e.printStackTrace());
        staticFileLocation("/public");
        port(8888);

        get("/", (Request req, Response res) ->
                new ThymeleafTemplateEngine().render(controller.index()));
        get("/takenReservation", (Request req, Response res) ->
                new ThymeleafTemplateEngine().render(controller.takenReservation()));
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
                res.redirect("/takenReservation");
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
}
