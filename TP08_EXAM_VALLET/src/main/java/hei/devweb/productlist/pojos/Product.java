package hei.devweb.productlist.pojos;

public class Product {
    private int id;
    private String name;
    private double weight;
    private double price;
    private int stock;

    public Product(int id, String name, double weight, double price, int stock) {
        this.id = id;
        this.name = name;
        this.weight = weight;
        this.price = price;
        this.stock = stock;
    }

    public Product(String name, double weight, double price, int stock) {
        this.name = name;
        this.weight = weight;
        this.price = price;
        this.stock = stock;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }
}