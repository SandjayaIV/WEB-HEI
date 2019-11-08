package hei.devweb.productlist.servlets;

import hei.devweb.productlist.pojos.Product;
import hei.devweb.productlist.services.ProductService;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.WebContext;
import org.thymeleaf.templatemode.TemplateMode;
import org.thymeleaf.templateresolver.ServletContextTemplateResolver;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;


public class ProductFormServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String errorMessage = (String) request.getSession().getAttribute("errorMessage");
            request.getSession().removeAttribute("errorMessage");
    ServletContextTemplateResolver resolver = new ServletContextTemplateResolver(request.getServletContext());
            resolver.setTemplateMode(TemplateMode.HTML);
            resolver.setPrefix("/WEB-INF/templates/");
            resolver.setSuffix(".html");



    //Webcontext
    WebContext context = new WebContext(request, response, request.getServletContext());
            context.setVariable("error", errorMessage);
    //création template engine
    TemplateEngine engine = new TemplateEngine();
            engine.setTemplateResolver(resolver);
    String finalDocument = engine.process("productList", context);
            response.getWriter().write(finalDocument);
}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("product");
        String weight= request.getParameter("weight");
        String price= request.getParameter("price");
        String stock = request.getParameter("stock");
        Double weight1 = Double.parseDouble(weight);
        Double price1 = Double.parseDouble(price);
        Integer stock1 = Integer.parseInt(stock);
        Product product = new Product(name,weight1,price1,stock1);

        try {
            ProductService.getInstance().addProducts(product);
        } catch (IllegalArgumentException | SQLException e) {
            request.getSession().setAttribute("errorMessage", e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("productlist");

    }
}
