package hei.devweb.tp04.servlets;

import hei.devweb.tp04.utils.MotDePasseUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/connexion")
public class ConnexionServlet extends HttpServlet {

    private Map<String, String> utilisateursAutorises;

    @Override
    public void init() throws ServletException {
        utilisateursAutorises = new HashMap<>();
        utilisateursAutorises.put("bob", "$argon2i$v=19$m=65536,t=5,p=1$wu2K3wC1SqqV1jvET8nQlomoQsxv+kgNO/WMD6muAdWN3WarFQr/Ik7wxibAKxydSagrSp0jVHIGGbtiDrL00XNvGGytTBHXGf6cQWRHM+E9u+8/zp9mzYLfaH2T8Vl1fh9YKIcvFPjmztLrHTPYNoMugb2NzaKAbLpvlS8wVQQ$dwdLEmmQVYDptrKnTMoljRFdt2bzzNdHMbTfJNDbK+9dNVbYunQGB9TDD5Xpt3/qCd3f2T6cALXWQJrach9+KSXfJ5kBDdaak7H6I/neE5bpI8Js53oo11RIhjOH2OsLWkKEEJgScJ4/S9hdm2bbIEHNWRj4zTq7vwVB0GmroYg");
        utilisateursAutorises.put("jean", "$argon2i$v=19$m=65536,t=5,p=1$ikkGp8vcWMfxKPpVSdBwCOSG/D6dthUqm+ZypN5t1lW5F/u94yLBHSREH1AxazVTNZD8xNJ3x84lM5zuJtceErzan7q696mw6g1akVrCvX+bm451hZGZFsKZYdO0NjonO3dRmPCSKwNdJAtMqXpY4rGgj60u8a4VnMgoY+mm9t0$KPUaicFLVHGUaxm+rmunNJC8TuIGM7eNqgcn1rWnECkIhTKstaZ/Hm6CQtxHGDx6YwKzUfU7bNd77xLK9t/c+8lQj+GMJOfd1HRMf9hcDJdWAJCrTj31uom7HzoG+FaOp/L6cUxljTiVGGgcOal4NnIfyCHmUYELcHZHgO4/64U");
        utilisateursAutorises.put("marie", "$argon2i$v=19$m=65536,t=5,p=1$XTSOXRpQBdq7iSh+I8Dh+uFn3l+Fkdg5rSt62B1FXvVj5iBCRRWViM6+UrKK8Xe+HHUSRFyHe+tsPn6yrKoC/5fL+1RDD0g7GCOIl44xdhhF5EDFWdQcMwAFuQ1Oi0LHL2e7zpjelmemf39IRq/19dG8M3lSMtTlsRvJKt0aq54$QQIK9AZKT1VuMeE1UitfepHiCUo7Xlf/mkThfy+T1JxtguNiBXbvK9qFULwVVAoti6fXIGIGPputImW5jn0KOt70Dq625ZSxFWfLjQ5axyRLa5ZWffFP8oRNdNJMvjUeF+ub24v6CT2Wlh43BnYxlG+EjzFhDmPSWBq8w9VGFBI");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String utilisateurConnecte = (String) req.getSession().getAttribute("utilisateurConnecte");

        System.out.println("J'ai récupéré " + utilisateurConnecte + " dans la session");

        PrintWriter out = resp.getWriter();

        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Page de connexion</title>");
        out.println("</head>");
        out.println("<body>");

        if( utilisateurConnecte == null || "".equals(utilisateurConnecte)) {
            out.println("<h1>Veuillez indiquer votre identifiant :</h1>");
            out.println("<form method=\"post\">");
            out.println("<input type=\"text\" name=\"identifiant\">");
            out.println("<input type=\"password\" name=\"motdepasse\">");
            out.println("<input type=\"submit\" value=\"Se connecter\">");
            out.println("</form>");
        } else {
            out.println(String.format("<h1>Bonjour %s</h1>", utilisateurConnecte));
            out.println("<ul>");
            out.println("<li><a href=\"prive/message.html\">Message privé</a></li>");
            out.println("<li><a href=\"prive/liste\">Liste privée</a></li>");
            out.println("<li><a href=\"deconnexion\">Me déconnecter</a></li>");
            out.println("</ul>");
        }


        out.println("</body>");
        out.println("</html>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String identifiant = req.getParameter("identifiant");
        System.out.println("J'ai récupéré " + identifiant + " en paramètre de la requête.");
        String motDePasse = req.getParameter("motdepasse");

        if(utilisateursAutorises.containsKey(identifiant)
                && MotDePasseUtils.validerMotDePasse(motDePasse, utilisateursAutorises.get(identifiant))) {
            req.getSession().setAttribute("utilisateurConnecte", identifiant);
        }
        resp.sendRedirect("connexion");
    }
}
