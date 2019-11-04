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
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

@WebServlet("/newfilm")
public class FilmFormServlet extends JavaCineeServlet {

    private static final DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        TemplateEngine templateEngine = createTemplateEngine(req.getServletContext());

        WebContext webContext = new WebContext(req, resp, req.getServletContext());

        List<Genre> genres = FilmService.getInstance().listGenres();
        webContext.setVariable("genresList", genres);

        templateEngine.process("newfilm", webContext, resp.getWriter());
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title = req.getParameter("title");
        String director = req.getParameter("director");
        String summary = req.getParameter("summary");

        int duration = Integer.parseInt(req.getParameter("duration"));

        int genreId = Integer.parseInt(req.getParameter("genre"));
        Genre genre = FilmService.getInstance().getGenre(genreId);

        String releaseDateString = req.getParameter("releaseDate");
        LocalDate releaseDate = LocalDate.parse(releaseDateString, dateFormatter);

        Film filmToAdd = new Film(null, title, releaseDate, genre, duration, director, summary);
        Film addedFilm = FilmService.getInstance().addFilm(filmToAdd);

        resp.sendRedirect(String.format("detail?id=%d", addedFilm.getId()));
    }
}
