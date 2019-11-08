package hei.devweb.productlist.daos;

import hei.devweb.productlist.pojos.Product;

import java.util.List;

public interface ProductDao {
    List<Product> listProducts();
    void addProducts(Product product) throws Exception;
}
