package com.mall;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class Order {
    private int id;
    private String order_no;
    private int user_id;
    private int shipping_id;
    private BigDecimal payment;
    private int payment_type;
    private int postage;
    private int status;
    private Timestamp payment_time;
    private Timestamp send_time;
    private Timestamp end_time;
    private Timestamp close_time;
    private Timestamp creat_time;
    private Timestamp upate_time;

    public Order() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getOrder_no() {
        return order_no;
    }

    public void setOrder_no(String order_no) {
        this.order_no = order_no;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getShipping_id() {
        return shipping_id;
    }

    public void setShipping_id(int shipping_id) {
        this.shipping_id = shipping_id;
    }

    public BigDecimal getPayment() {
        return payment;
    }

    public void setPayment(BigDecimal payment) {
        this.payment = payment;
    }

    public int getPayment_type() {
        return payment_type;
    }

    public void setPayment_type(int payment_type) {
        this.payment_type = payment_type;
    }

    public int getPostage() {
        return postage;
    }

    public void setPostage(int postage) {
        this.postage = postage;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Timestamp getPayment_time() {
        return payment_time;
    }

    public void setPayment_time(Timestamp payment_time) {
        this.payment_time = payment_time;
    }

    public Timestamp getSend_time() {
        return send_time;
    }

    public void setSend_time(Timestamp send_time) {
        this.send_time = send_time;
    }

    public Timestamp getEnd_time() {
        return end_time;
    }

    public void setEnd_time(Timestamp end_time) {
        this.end_time = end_time;
    }

    public Timestamp getClose_time() {
        return close_time;
    }

    public void setClose_time(Timestamp close_time) {
        this.close_time = close_time;
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
        return "Order{" +
                "id=" + id +
                ", order_no=" + order_no +
                ", user_id=" + user_id +
                ", shipping_id=" + shipping_id +
                ", payment=" + payment +
                ", payment_type=" + payment_type +
                ", postage=" + postage +
                ", status=" + status +
                ", payment_time=" + payment_time +
                ", send_time=" + send_time +
                ", end_time=" + end_time +
                ", close_time=" + close_time +
                ", creat_time=" + creat_time +
                ", upate_time=" + upate_time +
                '}';
    }

    public Order(int id, String order_no, int user_id, int shipping_id, BigDecimal payment, int payment_type, int postage, int status, Timestamp payment_time, Timestamp send_time, Timestamp end_time, Timestamp close_time, Timestamp creat_time, Timestamp upate_time) {
        this.id = id;
        this.order_no = order_no;
        this.user_id = user_id;
        this.shipping_id = shipping_id;
        this.payment = payment;
        this.payment_type = payment_type;
        this.postage = postage;
        this.status = status;
        this.payment_time = payment_time;
        this.send_time = send_time;
        this.end_time = end_time;
        this.close_time = close_time;
        this.creat_time = creat_time;
        this.upate_time = upate_time;


    }
}
