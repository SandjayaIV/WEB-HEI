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

@WebServlet("/fighter/details")
public class FighterDetailServlet extends HttpServlet {
    private static final ObjectMapper MAPPER = new ObjectMapper();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String FighterId = req.getParameter("id");
        Integer Id = Integer.parseInt(FighterId);
        Fighter fighter = HallOfFameService.getInstance().getFighter(Id);
        String fighterJSON = MAPPER.writeValueAsString(fighter);
        resp.getWriter().print(fighterJSON);

    }
}
