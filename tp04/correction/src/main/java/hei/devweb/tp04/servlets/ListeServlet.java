package hei.devweb.tp04.servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

public class ListeServlet extends HttpServlet {

    private List<String> listePrivee;

    @Override
    public void init() throws ServletException {
        listePrivee = new ArrayList<>();
        listePrivee.add("Phrase 1");
        listePrivee.add("Phrase 2");
        listePrivee.add("Phrase 3");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        PrintWriter out = resp.getWriter();

        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Page de la liste privée</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<ul>");

        for (String phrase : listePrivee) {
            out.println(String.format("<li>%s</li>", phrase));
        }

        out.println("</ul>");
        out.println("</body>");
        out.println("</html>");

    }

}
