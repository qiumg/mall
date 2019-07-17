package com.mall;

import java.sql.Date;
import java.sql.Timestamp;

public class ProductSpecs {
    private int id;
    private int product_Id;
    private String product_Specs;
    private int specs_Seq;
    private int product_Stock;
    private double product_Price;
    private Timestamp create_Time;
    private Timestamp update_Time;

    public ProductSpecs() {
    }

    public ProductSpecs(int id, int product_Id, String product_Specs, int specs_Seq, int product_Stock, double product_Price, Timestamp create_Time, Timestamp update_Time) {
        this.id = id;
        this.product_Id = product_Id;
        this.product_Specs = product_Specs;
        this.specs_Seq = specs_Seq;
        this.product_Stock = product_Stock;
        this.product_Price = product_Price;
        this.create_Time = create_Time;
        this.update_Time = update_Time;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProduct_Id() {
        return product_Id;
    }

    public void setProduct_Id(int product_Id) {
        this.product_Id = product_Id;
    }

    public String getProduct_Specs() {
        return product_Specs;
    }

    public void setProduct_Specs(String product_Specs) {
        this.product_Specs = product_Specs;
    }

    public int getSpecs_Seq() {
        return specs_Seq;
    }

    public void setSpecs_Seq(int specs_Seq) {
        this.specs_Seq = specs_Seq;
    }

    public int getProduct_Stock() {
        return product_Stock;
    }

    public void setProduct_Stock(int product_Stock) {
        this.product_Stock = product_Stock;
    }

    public double getProduct_Price() {
        return product_Price;
    }

    public void setProduct_Price(double product_Price) {
        this.product_Price = product_Price;
    }

    public Timestamp getCreate_Time() {
        return create_Time;
    }

    public void setCreate_Time(Timestamp create_Time) {
        this.create_Time = create_Time;
    }

    public Timestamp getUpdate_Time() {
        return update_Time;
    }

    public void setUpdate_Time(Timestamp update_Time) {
        this.update_Time = update_Time;
    }

    @Override
    public String toString() {
        return "ProductSpecs{" +
                "id=" + id +
                ", product_Id=" + product_Id +
                ", product_Specs='" + product_Specs + '\'' +
                ", specs_Seq=" + specs_Seq +
                ", product_Stock=" + product_Stock +
                ", product_Price=" + product_Price +
                ", create_Time=" + create_Time +
                ", update_Time=" + update_Time +
                '}';
    }
}
