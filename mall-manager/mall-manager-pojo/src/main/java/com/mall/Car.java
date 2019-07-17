package com.mall;

public class Car {
    private int id;
    private String name;
    private String main_image;
    private int quantity;
    private String product_specs;
    private double product_price;

    public Car(){}

    public Car(int id, String name, String main_image, int quantity, String product_specs, double product_price) {
        this.id = id;
        this.name = name;
        this.main_image = main_image;
        this.quantity = quantity;
        this.product_specs = product_specs;
        this.product_price = product_price;
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

    public String getMain_image() {
        return main_image;
    }

    public void setMain_image(String main_image) {
        this.main_image = main_image;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getProduct_specs() {
        return product_specs;
    }

    public void setProduct_specs(String product_specs) {
        this.product_specs = product_specs;
    }

    public double getProduct_price() {
        return product_price;
    }

    public void setProduct_price(double product_price) {
        this.product_price = product_price;
    }

    @Override
    public String toString() {
        return "Car{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", main_image='" + main_image + '\'' +
                ", quantity=" + quantity +
                ", product_specs='" + product_specs + '\'' +
                ", product_price=" + product_price +
                '}';
    }
}
