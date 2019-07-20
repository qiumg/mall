package com.mall;

import java.util.Date;

public class User {
     private int id;
    private String username;
    private String password;
    private int sex;
    private String emali;
    private String phone;
    private String queston;
    private String answer;
    private int role;
    private Date create_time;
    private Date update_time;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public String getEmali() {
        return emali;
    }

    public void setEmali(String emali) {
        this.emali = emali;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getQueston() {
        return queston;
    }

    public void setQueston(String queston) {
        this.queston = queston;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public Date getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(Date update_time) {
        this.update_time = update_time;
    }

    @Override
    public String toString() {
        return "user{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ",password='"+password+'\''+
                ",sex='"+sex+'\''+
                ", email='" + emali + '\'' +
                ", phone='" + phone + '\'' +
                ",question='"+queston+'\''+
                ",answer='"+answer+'\''+
                ", role='" + role + '\'' +
                ",create_time='"+create_time+'\''+
                ",update_time='"+update_time+'\''+
                '}';
    }



}
