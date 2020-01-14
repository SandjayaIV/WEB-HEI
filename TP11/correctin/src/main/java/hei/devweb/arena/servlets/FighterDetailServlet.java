package hei.devweb.arena.servlets;

import com.fasterxml.jackson.databind.ObjectMapper;
import hei.devweb.arena.pojos.Fighter;
import hei.devweb.arena.services.HallOfFameService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/fighters/details")
public class FighterDetailServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer fighterId = Integer.parseInt(req.getParameter("id"));

        Fighter fighter = HallOfFameService.getInstance().getFighter(fighterId);

        ObjectMapper mapper = new ObjectMapper();
        String jsonFighter = mapper.writeValueAsString(fighter);

        resp.getWriter().print(jsonFighter);
    }
}
