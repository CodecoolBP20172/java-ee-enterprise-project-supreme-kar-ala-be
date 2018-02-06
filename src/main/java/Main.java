import com.codecoool.rental.controller.RentalController;
import spark.Request;
import spark.Response;
import spark.template.thymeleaf.ThymeleafTemplateEngine;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import static spark.Spark.*;
import static spark.debug.DebugScreen.enableDebugScreen;

public class Main {

    //TODO refactor
    public static Integer userId = 0;

    public static void main(String[] args) {
        // default server settings
        exception(Exception.class, (e, req, res) -> e.printStackTrace());
        staticFileLocation("/public");
        port(8888);

        get("/", (Request req, Response res) -> new ThymeleafTemplateEngine().render(RentalController.renderRentals(req, res, userId) ));

        //roots
        enableDebugScreen();

        EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpaexamplePU");
        EntityManager em = emf.createEntityManager();

    }

}
