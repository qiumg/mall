package com.mall;


import java.sql.Timestamp;

public class Product {
    private int id;
    private int category_id;
    private String name;
    private String subTitle;
    private String main_Image;
    private String sub_Image;
    private String detail;
    private String attributeList;
    private double price;
    private int stock;
    private int status;
    private Timestamp create_time;
    private Timestamp update_time;

    public Product() {
    }

    public Product(int id, int category_id, String name, String subTitle, String main_Image, String sub_Image, String detail, String attributeList, double price, int stock, int status, Timestamp create_time, Timestamp update_time) {
        this.id = id;
        this.category_id = category_id;
        this.name = name;
        this.subTitle = subTitle;
        this.main_Image = main_Image;
        this.sub_Image = sub_Image;
        this.detail = detail;
        this.attributeList = attributeList;
        this.price = price;
        this.stock = stock;
        this.status = status;
        this.create_time = create_time;
        this.update_time = update_time;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSubTitle() {
        return subTitle;
    }

    public void setSubTitle(String subTitle) {
        this.subTitle = subTitle;
    }

    public String getMain_Image() {
        return main_Image;
    }

    public void setMain_Image(String main_Image) {
        this.main_Image = main_Image;
    }

    public String getSub_Image() {
        return sub_Image;
    }

    public void setSub_Image(String sub_Image) {
        this.sub_Image = sub_Image;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getAttributeList() {
        return attributeList;
    }

    public void setAttributeList(String attributeList) {
        this.attributeList = attributeList;
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

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Timestamp getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Timestamp create_time) {
        this.create_time = create_time;
    }

    public Timestamp getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(Timestamp update_time) {
        this.update_time = update_time;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", category_id=" + category_id +
                ", name='" + name + '\'' +
                ", subTitle='" + subTitle + '\'' +
                ", main_Image='" + main_Image + '\'' +
                ", sub_Image='" + sub_Image + '\'' +
                ", detail='" + detail + '\'' +
                ", attributeList='" + attributeList + '\'' +
                ", price=" + price +
                ", stock=" + stock +
                ", status=" + status +
                ", create_time=" + create_time +
                ", update_time=" + update_time +
                '}';
    }
}
