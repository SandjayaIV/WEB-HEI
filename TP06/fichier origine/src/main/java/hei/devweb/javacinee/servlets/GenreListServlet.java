package hei.devweb.javacinee.servlets;

import hei.devweb.javacinee.entities.Film;
import hei.devweb.javacinee.entities.Genre;
import hei.devweb.javacinee.managers.FilmService;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.WebContext;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.List;

@WebServlet("/genres")
public class GenreListServlet extends JavaCineeServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        TemplateEngine templateEngine = createTemplateEngine(req.getServletContext());

        WebContext webContext = new WebContext(req, resp, req.getServletContext());

        List<Genre> genres = FilmService.getInstance().listGenres();
        webContext.setVariable("genresList", genres);

        templateEngine.process("genres", webContext, resp.getWriter());
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        FilmService.getInstance().addGenre(name);

        resp.sendRedirect("genres");
    }
}
