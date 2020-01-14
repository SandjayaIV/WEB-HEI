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
import java.util.List;

@WebServlet("/fighters/list")
public class FightersListServlet extends HttpServlet {
    private static final ObjectMapper MAPPER = new ObjectMapper();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Fighter> fighters = HallOfFameService.getInstance().listFighters();
        String fightersJson = MAPPER.writeValueAsString(fighters);
        resp.getWriter().print(fightersJson);
    }
}
