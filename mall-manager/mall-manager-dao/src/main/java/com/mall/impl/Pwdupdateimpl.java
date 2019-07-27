package com.mall.impl;

import com.mall.Pwdupdate;
import com.utils.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Pwdupdateimpl implements Pwdupdate {
    @Override
    public boolean yanzheng(int id, String oldpwd) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        con = JDBCUtils.getConnection();//1:获取数据库的连接
        String sql = "select password from mmall_user where id=?";
        try {
            ps = con.prepareStatement(sql);//3：预编译
            ps.setInt(1,id);
            rs = ps.executeQuery();//5:执行sql语句
            if (rs.next()) {
                return rs.getString("password").equals(oldpwd);//rs.getString("password");
            } else {
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean xiugai(int id, String newpwd) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        con = JDBCUtils.getConnection();//1:获取数据库的连接
        String sql = "UPDATE mmall_user SET password = ? WHERE id = ?";
        try {
            ps = con.prepareStatement(sql);//3：预编译
            ps.setString(1,newpwd);
            ps.setInt(2,id);
            int count = ps.executeUpdate();//第四步：执行sql语句
            //System.out.println(count);
            if (count > 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
