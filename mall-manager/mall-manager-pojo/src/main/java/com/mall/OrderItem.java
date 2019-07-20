package com.mall;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class OrderItem {

    private int id;
    private int user_id;
    private long order_no;
    private int product_id;
    private String product_name;
    private String product_image;
    private BigDecimal current_unit_price;
    private int quantity;
    private BigDecimal total_price;
    private Timestamp creat_time;
    private Timestamp upate_time;

    public OrderItem() {
    }

    public OrderItem(int id, int user_id, long order_no, int product_id, String product_name, String product_image, BigDecimal current_unit_price, int quantity, BigDecimal total_price, Timestamp creat_time, Timestamp upate_time) {
        this.id = id;
        this.user_id = user_id;
        this.order_no = order_no;
        this.product_id = product_id;
        this.product_name = product_name;
        this.product_image = product_image;
        this.current_unit_price = current_unit_price;
        this.quantity = quantity;
        this.total_price = total_price;
        this.creat_time = creat_time;
        this.upate_time = upate_time;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public long getOrder_no() {
        return order_no;
    }

    public void setOrder_no(int order_no) {
        this.order_no = order_no;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getProduct_image() {
        return product_image;
    }

    public void setProduct_image(String product_image) {
        this.product_image = product_image;
    }

    public BigDecimal getCurrent_unit_price() {
        return current_unit_price;
    }

    public void setCurrent_unit_price(BigDecimal current_unit_price) {
        this.current_unit_price = current_unit_price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public BigDecimal getTotal_price() {
        return total_price;
    }

    public void setTotal_price(BigDecimal total_price) {
        this.total_price = total_price;
    }

    public Timestamp getCreat_time() {
        return creat_time;
    }

    public void setCreat_time(Timestamp creat_time) {
        this.creat_time = creat_time;
    }

    public Timestamp getUpate_time() {
        return upate_time;
    }

    public void setUpate_time(Timestamp upate_time) {
        this.upate_time = upate_time;
    }

    @Override
    public String toString() {
        return "OrderItem{" +
                "id=" + id +
                ", user_id=" + user_id +
                ", order_no=" + order_no +
                ", product_id=" + product_id +
                ", product_name='" + product_name + '\'' +
                ", product_image='" + product_image + '\'' +
                ", current_unit_price=" + current_unit_price +
                ", quantity=" + quantity +
                ", total_price=" + total_price +
                ", creat_time=" + creat_time +
                ", upate_time=" + upate_time +
                '}';
    }
}
