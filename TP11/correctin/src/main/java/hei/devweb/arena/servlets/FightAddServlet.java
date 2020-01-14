package hei.devweb.arena.servlets;

import com.fasterxml.jackson.databind.ObjectMapper;
import hei.devweb.arena.pojos.Fight;
import hei.devweb.arena.pojos.Fighter;
import hei.devweb.arena.services.HallOfFameService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/fighters/addfight")
public class FightAddServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fighterName = req.getParameter("fighterName");
        String fighterJob = req.getParameter("fighterJob");
        String status = req.getParameter("status");

        Fight fight = new Fight(fighterName, fighterJob, Fight.Status.valueOf(status));

        Fighter fighter = HallOfFameService.getInstance().addFight(fight);

        ObjectMapper mapper = new ObjectMapper();
        String jsonFighter = mapper.writeValueAsString(fighter);

        resp.getWriter().print(jsonFighter);
    }
}
