package hei.devweb.arena.servlets;

import hei.devweb.arena.services.HallOfFameService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/fighters/like")
public class FighterLikeServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer fighterId = Integer.parseInt(req.getParameter("id"));
        HallOfFameService.getInstance().likeFighter(fighterId);

    }
}
