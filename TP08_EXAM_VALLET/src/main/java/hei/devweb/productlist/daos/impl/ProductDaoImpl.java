package hei.devweb.productlist.daos.impl;

import hei.devweb.productlist.daos.ProductDao;
import hei.devweb.productlist.pojos.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDaoImpl implements ProductDao {
    @Override
    public List<Product> listProducts() {
        List<Product> products = new ArrayList<>();
        try(Connection connection = DataProviderService.getDataSource().getConnection()) {
            try (Statement statement = connection.createStatement()) {
                try(ResultSet resultSet = statement.executeQuery("SELECT * FROM product ORDER BY product;")) {
                    while (resultSet.next()) {
                        Product product = new Product(
                                resultSet.getInt("idproduct"),
                                resultSet.getString("product"),
                                resultSet.getDouble("weight"),
                                resultSet.getDouble("price"),
                                resultSet.getInt("stock")
                        );
                        products.add(product);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    @Override
    public void addProducts(Product product) {
            try (Connection connection = DataProviderService.getDataSource().getConnection()) {
                String sqlQuery = "INSERT INTO product(product,weight, price, stock ) VALUES(?,?,?,?)";
                try (PreparedStatement statement = connection.prepareStatement(
                        sqlQuery, Statement.RETURN_GENERATED_KEYS)) {
                    statement.setString(1, product.getName());
                    statement.setDouble(2, product.getWeight());
                    statement.setDouble(3, product.getPrice());
                    statement.setInt(4, product.getStock());
                    statement.executeUpdate();
                    ResultSet ids = statement.getGeneratedKeys();
                    if (ids.next()) {
                        new Product(ids.getInt(1),product.getName(), product.getWeight(), product.getPrice(), product.getStock());
                    }
                }
            }catch (SQLException e) {
// Manage Exception
                e.printStackTrace();
            }
        }
    }
