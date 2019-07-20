package com.mall.impl;

import com.mall.IMmall_userDao;
import com.mall.User;
import com.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.*;
import java.util.List;

public class Mmall_userDaoImpl implements IMmall_userDao {



        @Override
        public void insertUser(User user) throws SQLException {
            Connection conn = null;
            String sql = "insert into mmall_user(id,username,password,sex,email,phone,question,answer,role,create_time,update_time)" + " value (?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pps = null;
            try {
                conn = JDBCUtils.getConnection();
                pps = conn.prepareStatement(sql);
//                pps.setInt(1, user.getId());
                pps.setString(2, user.getUsername());
                pps.setString(3, user.getPassword());
                pps.setInt(4, user.getSex());
                pps.setString(5, user.getEmali());
                pps.setString(6, user.getPhone());
//                pps.setString(7, user.getQueston());
//                pps.setString(8, user.getAnswer());
                pps.setInt(9, user.getRole());
//                pps.setDate(10, (Date) user.getCreate_time());
//                pps.setDate(11, (Date) user.getUpdate_time());
                pps.executeUpdate();
            }catch(SQLException e){
                e.printStackTrace();
            }

        }

    @Override
    public void deleteUserById(int id)  {
           /* Connection conn = null;
            String sql = "delete from mmall_user where id=?";
            PreparedStatement pps = null;
            conn=JDBCUtils.getConnection();
        try {
            pps=conn.prepareStatement(sql);
            pps.setInt(1,id);
            pps.executeLargeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }*/

        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "delete from mmall_user where id = ?";
        try {
            qr.execute(sql,id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public void update(User user) throws SQLException {
        Connection conn = null;
        String sql ="update user set uaername=?,password=?,sex=?,email=?,phone=?,question=?,answer=?,role=?,create_time=?,update_time=? where id =?";
        PreparedStatement pps = null;
        try {
        conn = JDBCUtils.getConnection();
        pps=conn.prepareStatement(sql);
        pps.setString(1, user.getUsername());
        pps.setString(2, user.getPassword());
        pps.setInt(3, user.getSex());
        pps.setString(4, user.getEmali());
        pps.setString(5, user.getPhone());
        pps.setString(6, user.getQueston());
        pps.setString(7, user.getAnswer());
        pps.setInt(8, user.getRole());
        pps.setDate(9, (Date) user.getCreate_time());
        pps.setDate(10, (Date) user.getUpdate_time());
        pps.setInt(11, user.getId());
        pps.executeLargeUpdate();
    }catch(SQLException e){
            e.printStackTrace();
        }
    }

    @Override
    public User selectUserById(int id) throws SQLException {
            Connection conn = null;
            PreparedStatement pps = null;
        ResultSet res =null;
        String sql = "select * from user where id=?";
        User user = new User();
        try {
            conn = JDBCUtils.getConnection();
            pps = conn.prepareStatement(sql);
            pps.setInt(1, id);
            res = pps.executeQuery();
            while (res.next()){
                user.setId(res.getInt("id"));
                user.setUsername(res.getString("username"));
                user.setPassword(res.getString("password"));
                user.setSex(res.getInt("sex"));
                user.setEmali(res.getString("email"));
                user.setPhone(res.getString("phone"));
                user.setQueston(res.getString("question"));
                user.setAnswer(res.getString("answer"));
                user.setRole(res.getInt("role"));
                user.setCreate_time(res.getDate("create_time"));
                user.setUpdate_time(res.getTime("update_time"));
            }
        }catch (SQLException e){
            e.printStackTrace();
        }

        return user;
    }

    @Override
    public List<User> selectUserAll() throws SQLException {
            List<User> users = null;
        QueryRunner qr =new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from mmall_user";
        try{
            users = qr.query(sql,new BeanListHandler<>(User.class));
        }catch (SQLException e){
            e.printStackTrace();
        }
        return users;
    }
}
