package com.mall;

public class Product {
    private int id;
    private int category_id;
    private String name;
    private String subTitle;
    private String mainImage;
    private String subImage;
    private String detail;
    private String attributeList;
    private double price;
    private int stock;
    private int status;
    private String createDate;
    private String updateDate;

    public Product() {
    }

    public Product(int id, int category_id, String name, String subTitle, String mainImage, String subImage, String detail, String attributeList, double price, int stock, int status, String createDate, String updateDate) {
        this.id = id;
        this.category_id = category_id;
        this.name = name;
        this.subTitle = subTitle;
        this.mainImage = mainImage;
        this.subImage = subImage;
        this.detail = detail;
        this.attributeList = attributeList;
        this.price = price;
        this.stock = stock;
        this.status = status;
        this.createDate = createDate;
        this.updateDate = updateDate;
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

    public String getMainImage() {
        return mainImage;
    }

    public void setMainImage(String mainImage) {
        this.mainImage = mainImage;
    }

    public String getSubImage() {
        return subImage;
    }

    public void setSubImage(String subImage) {
        this.subImage = subImage;
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

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(String updateDate) {
        this.updateDate = updateDate;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", category_id=" + category_id +
                ", name='" + name + '\'' +
                ", subTitle='" + subTitle + '\'' +
                ", mainImage='" + mainImage + '\'' +
                ", subImage='" + subImage + '\'' +
                ", detail='" + detail + '\'' +
                ", attributeList='" + attributeList + '\'' +
                ", price=" + price +
                ", stock=" + stock +
                ", status=" + status +
                ", createDate='" + createDate + '\'' +
                ", updateDate='" + updateDate + '\'' +
                '}';
    }
}
