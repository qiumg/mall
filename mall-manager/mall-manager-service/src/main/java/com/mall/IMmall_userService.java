package com.mall;

import java.sql.SQLException;
import java.util.List;

public interface IMmall_userService {
    //新增用户
    public  void  addUser(User user);
    //删除用户
    public  void removeUser(int id);
    //修改用户信息
    public void modifyUser(User user);
    //查询单个用户
    public User selectUserById(int id) throws SQLException;
    //查询所以用户
    public List<User>findAll();

}
