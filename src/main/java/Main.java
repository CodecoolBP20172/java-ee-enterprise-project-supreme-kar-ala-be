import com.codecoool.rental.controller.Controller;
import com.codecoool.rental.model.Rental;
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

        get("/", (Request req, Response res) -> new ThymeleafTemplateEngine().render(Controller.index(req, res, userId) ));
        get("/rental/:id", (Request req, Response res) -> new ThymeleafTemplateEngine().render(Controller.getRental(req, res, userId) ));

        //roots
        enableDebugScreen();

        Rental rental = new Rental("Rental name","Description",22.5,"Bukarest",5);
        Rental rental2 = new Rental("Rental2 name","Description",22.5,"Bukarest",5);
        Rental rental3 = new Rental("Rental3 name","Description",22.5,"Bukarest",5);
        Controller.em.getTransaction().begin();
        Controller.em.persist(rental);
        Controller.em.persist(rental2);
        Controller.em.persist(rental3);
        Controller.em.getTransaction().commit();
        Controller.em.getTransaction().begin();


    }

}
