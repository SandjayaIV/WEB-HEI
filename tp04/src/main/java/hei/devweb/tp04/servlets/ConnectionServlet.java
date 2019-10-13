package hei.devweb.tp04.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/connexion")
public class ConnectionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String utilisateurConnecte = (String) req.getSession().getAttribute("utilisateurConnecte");
        System.out.println("jai récupéré "+ req.getSession().getAttribute("utilisateurConnecte") + " dans la session");

        PrintWriter out = resp.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title> page de connexion </title>");
        out.println("</head");
        out.println("<body>");
         if( utilisateurConnecte == null || "".equals(utilisateurConnecte)){
        out.println("<h1>Veuillez indiquer votre identifiant :</h1>");
        out.println("<form method=\"post\">");
        out.println("<input type=\"text\" name=\"identifiant\">");
        out.println("<input type=\"submit\" value=\"se connecter\">");
        out.println("</form>");
        }
         else {
             out.println(String.format("<h1> Bonjour %s </h1>", utilisateurConnecte));
             out.println("<ul>");
             out.println("<li><a href=\"/prive/message.html\">Message privé</a></li>");
             out.println("<li><a href=\"/prive/liste\">Liste privée</a></li>");
             out.println("<ul>");
             out.println("<a href=\"/deconnexion\">se déconnecter </a>");


         }
        out.println("<body>");
        out.println("</html>");


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
          String identifiant = req.getParameter("identifiant")   ;
          System.out.println("J'ai récupéré "+identifiant+" en parametre");
          req.getSession().setAttribute("utilisateurConnecte",identifiant);

          resp.sendRedirect("connexion");

    }
}