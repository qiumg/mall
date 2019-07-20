package com.mall.impl;

import com.mall.IMmall_userDao;
import com.mall.IMmall_userService;
import com.mall.User;


import java.sql.SQLException;
import java.util.List;

public class Mmall_userServiceImpl implements IMmall_userService {

    @Override
    public void addUser(User user) {
        IMmall_userDao dao = new Mmall_userDaoImpl();
        try {
            dao.insertUser(user);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public void removeUser(int id) {
        IMmall_userDao dao = new Mmall_userDaoImpl();
        try {
            dao.deleteUserById(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public void modifyUser(User user) {
        IMmall_userDao dao = new Mmall_userDaoImpl();
        try {
            dao.update(user);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public User selectUserById(int id) throws SQLException {
        IMmall_userDao dao = new Mmall_userDaoImpl();
        User user = null;
        user = dao.selectUserById(id);
        return user;
    }




    @Override
    public List<User> findAll() {
    IMmall_userDao dao = new Mmall_userDaoImpl();
    List<User>userList = null;
        try {
            userList= dao.selectUserAll();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }
}