package hei.devweb.javacinee.servlets;

import hei.devweb.javacinee.entities.Film;
import hei.devweb.javacinee.managers.FilmService;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.WebContext;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/list")
public class FilmsListServlet extends GenericServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        WebContext context = new WebContext(req, resp, req.getServletContext());
        List<Film> listOfFilms = FilmService.getInstance().listFilms();
        context.setVariable("filmsList", listOfFilms);

        TemplateEngine templateEngine = createTemplateEngine(req.getServletContext());
        templateEngine.process("list", context, resp.getWriter());
    }
}
