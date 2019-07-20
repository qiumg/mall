package com.mall;

import java.sql.SQLException;
import java.util.List;

public interface IMmall_userDao {

   public void insertUser(User user)throws SQLException;

   public void deleteUserById(int id)throws SQLException;

   public void  update(User user) throws SQLException;

   public User selectUserById(int id)throws SQLException;

   public List<User>selectUserAll() throws SQLException;

}
