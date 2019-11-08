package hei.devweb.contactlist.servlets;

import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.WebContext;
import org.thymeleaf.extras.java8time.dialect.Java8TimeDialect;
import org.thymeleaf.templatemode.TemplateMode;
import org.thymeleaf.templateresolver.ServletContextTemplateResolver;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/list")
public class ContactListServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    System.out.println("test");
    ServletContextTemplateResolver templateResolver = new ServletContextTemplateResolver(req.getServletContext()); //Donner des informations pour aller chercher un template
    templateResolver.setTemplateMode(TemplateMode.HTML);

    TemplateEngine engine = new TemplateEngine();
    engine.setTemplateResolver(templateResolver);
    WebContext context = new WebContext(req,resp,req.getServletContext()); // objet qui va contenir toutes les variables

    engine.process("/WEB-INF/templates/index.html", context,resp.getWriter());
}
}
