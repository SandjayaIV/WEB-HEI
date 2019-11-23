package hei.devweb.arena.servlets;

import com.fasterxml.jackson.databind.ObjectMapper;
import hei.devweb.arena.daos.FighterDao;
import hei.devweb.arena.pojos.Fight;
import hei.devweb.arena.services.HallOfFameService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/fighter/count")
public class FightersCountServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         Integer nbFighters = HallOfFameService.getInstance().countFighters();
         resp.getWriter().print(nbFighters);

    }
}
