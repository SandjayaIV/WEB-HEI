package hei.devweb.productlist.services;

import hei.devweb.productlist.daos.ProductDao;
import hei.devweb.productlist.daos.impl.ProductDaoImpl;
import hei.devweb.productlist.pojos.Product;

import java.util.List;

public class ProductService implements ProductDao {
    private static class ProductServiceHolder {
        private static ProductService instance = new ProductService();
    }

    public static ProductService getInstance() {
        return ProductServiceHolder.instance;
    }

    private ProductService() {}

    private ProductDao productDao = new ProductDaoImpl();
    @Override
    public List<Product> listProducts() {
        return productDao.listProducts();
    }

    @Override
    public void addProducts(Product product) throws Exception {
        productDao.addProducts(product);
    }
}
