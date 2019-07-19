package com.mall.impl;

import com.mall.UserUpdate;
import com.mall.user;
import com.utils.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserUpdateimpl implements UserUpdate {

    @Override
    public boolean userinfupdate(user user,String name) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        con = JDBCUtils.getConnection();//1:获取数据库的连接
        String sql="UPDATE mmall_user SET username = ?,sex = ? ,phone = ? ,email = ? WHERE username = ?";
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, user.getName());
            ps.setInt(2,user.getSex());
            ps.setString(3,user.getPhone());
            ps.setString(4,user.getEmail());
            ps.setString(5,name);
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
