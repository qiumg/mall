package com.mall;

import java.sql.Timestamp;

public class Shipping {
    private int id;
    private int user_Id;
    private String receiver_name;
    private String receiver_mobile;
    private String receiver_province;
    private String receiver_city;
    private String receiver_district;
    private String receiver_address;
    private Timestamp create_time;
    private Timestamp update_time;

    public Shipping() {
    }

    public Shipping(int id, int user_Id, String receiver_name, String receiver_mobile, String receiver_province, String receiver_city, String receiver_district, String receiver_address, Timestamp create_time, Timestamp update_time) {
        this.id = id;
        this.user_Id = user_Id;
        this.receiver_name = receiver_name;
        this.receiver_mobile = receiver_mobile;
        this.receiver_province = receiver_province;
        this.receiver_city = receiver_city;
        this.receiver_district = receiver_district;
        this.receiver_address = receiver_address;
        this.create_time = create_time;
        this.update_time = update_time;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_Id() {
        return user_Id;
    }

    public void setUser_Id(int user_Id) {
        this.user_Id = user_Id;
    }

    public String getReceiver_name() {
        return receiver_name;
    }

    public void setReceiver_name(String receiver_name) {
        this.receiver_name = receiver_name;
    }

    public String getReceiver_mobile() {
        return receiver_mobile;
    }

    public void setReceiver_mobile(String receiver_mobile) {
        this.receiver_mobile = receiver_mobile;
    }

    public String getReceiver_province() {
        return receiver_province;
    }

    public void setReceiver_province(String receiver_province) {
        this.receiver_province = receiver_province;
    }

    public String getReceiver_city() {
        return receiver_city;
    }

    public void setReceiver_city(String receiver_city) {
        this.receiver_city = receiver_city;
    }

    public String getReceiver_district() {
        return receiver_district;
    }

    public void setReceiver_district(String receiver_district) {
        this.receiver_district = receiver_district;
    }

    public String getReceiver_address() {
        return receiver_address;
    }

    public void setReceiver_address(String receiver_address) {
        this.receiver_address = receiver_address;
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
        return "Shipping{" +
                "id=" + id +
                ", user_Id=" + user_Id +
                ", receiver_name='" + receiver_name + '\'' +
                ", receiver_mobile='" + receiver_mobile + '\'' +
                ", receiver_province='" + receiver_province + '\'' +
                ", receiver_city='" + receiver_city + '\'' +
                ", receiver_district='" + receiver_district + '\'' +
                ", receiver_address='" + receiver_address + '\'' +
                ", create_time=" + create_time +
                ", update_time=" + update_time +
                '}';
    }
}
