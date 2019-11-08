package hei.devweb.productlist.servlets;

import hei.devweb.productlist.pojos.Product;
import hei.devweb.productlist.services.ProductService;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.WebContext;
import org.thymeleaf.templatemode.TemplateMode;
import org.thymeleaf.templateresolver.ServletContextTemplateResolver;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/productlist")
public class ProductListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContextTemplateResolver resolver = new ServletContextTemplateResolver(req.getServletContext());
        resolver.setTemplateMode(TemplateMode.HTML);
        resolver.setPrefix("/WEB-INF/templates/");
        resolver.setSuffix(".html");
        List<Product> products = null;
        products = ProductService.getInstance().listProducts();

        //Webcontext
        WebContext context = new WebContext(req,resp,req.getServletContext());
        context.setVariable("productList",products);
        //création template engine
        TemplateEngine engine = new TemplateEngine();
        engine.setTemplateResolver(resolver);
        String finalDocument = engine.process("productlist",context);
        resp.getWriter().write(finalDocument);
    }
}
