package com.mall.impl;

import com.mall.user;
import com.mall.userdao;
import com.utils.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class userdaoimpl implements userdao {
    @Override
    public user login(user user) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = JDBCUtils.getConnection();//1:获取数据库的连接
            //2:书写sql语句
            String sql = "select * from mmall_user where username=? and password=? ";
            ps = con.prepareStatement(sql);//3：预编译
            //4：设置值
            ps.setString(1, user.getName());
            ps.setString(2, user.getPassword());
            rs = ps.executeQuery();//5:执行sql语句
            user users = new user();
            if (rs.next()) {
                //从数据库中获取值设置到实体类的setter方法中
                users.setId(rs.getInt("id"));
                users.setName(rs.getString("username"));
                users.setPassword(rs.getString("password"));
                users.setSex(rs.getInt("sex"));
                users.setPhone(rs.getString("phone"));
                users.setEmail(rs.getString("email"));
                return users;
            } else {
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean register(user user) {
        Date getDate = Calendar.getInstance().getTime();
        String dateStr = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(getDate);
        //System.out.println("日期加时间:" + dateStr);
        String sql = "insert into mmall_user (username,password,sex,role,create_time,update_time) values(?,?,0,0,?,?) ";
        List<Object> list = new ArrayList<Object>();
        list.add(user.getName());
        list.add(user.getPassword());
        list.add(dateStr);
        list.add(dateStr);
        //list.add(user.getPhone());
        boolean flag=JDBCUtils.addUpdateDelete(sql,list.toArray());
        if(flag){
           return true;
        }else {
            return false;
        }
    }
}
