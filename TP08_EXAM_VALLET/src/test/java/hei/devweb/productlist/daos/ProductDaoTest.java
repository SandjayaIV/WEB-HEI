package hei.devweb.productlist.daos;

import hei.devweb.productlist.daos.impl.DataProviderService;
import hei.devweb.productlist.daos.impl.ProductDaoImpl;
import hei.devweb.productlist.pojos.Product;
import org.assertj.core.api.Assertions;
import org.assertj.core.groups.Tuple;
import org.junit.Before;
import org.junit.Test;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

public class ProductDaoTest {
    ProductDao productDao = new ProductDaoImpl();

    @Before
    public void initDb() throws Exception {
        try (Connection connection = DataProviderService.getDataSource().getConnection();
             Statement stmt = connection.createStatement()) {
            stmt.executeUpdate("DELETE FROM product");
            stmt.executeUpdate("INSERT INTO `product`(`idproduct`,`product`,`weight`,`price`,`stock`) VALUES (1,'vis',0.01,0.10,100)");
            stmt.executeUpdate("INSERT INTO `product`(`idproduct`,`product`,`weight`,`price`,`stock`) VALUES (2,'tournevis',1.5,5.0,50)");

        }
    }

    @Test
    public void shouldListProducts(){
    List<Product> products = productDao.listProducts();
    //THEN
        Assertions.assertThat(products).hasSize(2);
        Assertions.assertThat(products).extracting("id","name","weight","price","stock").containsOnly(
            Tuple.tuple(1,"vis",0.01,0.10,100),
                        Tuple.tuple(2,"tournevis",1.5,5.0,50));
    }

    @Test
    public void shouldAddProducts() throws Exception {
        //WHEN
        Product product = new Product("Hammer", 0.63, 21.45, 5);
        productDao.addProducts(product);
        //THEN
        try (Connection connection = DataProviderService.getDataSource().getConnection();
             Statement stmt = connection.createStatement()) {
            try (ResultSet rs = stmt.executeQuery("SELECT * FROM product ORDER BY product")) {
                assertThat(rs.next()).isTrue();
                assertThat(rs.getInt("idproduct")).isGreaterThan(2);
                assertThat(rs.getString("product")).isEqualTo("Hammer");
                assertThat(rs.getDouble("weight")).isEqualTo(0.63);
                assertThat(rs.getDouble("price")).isEqualTo(21.45);
                assertThat(rs.getInt("stock")).isEqualTo(5);
            }
        }
    }

    }



