package com.test;


import com.mall.*;
import com.mall.impl.CategoryDAOImpl;
import com.mall.impl.Mmall_userDaoImpl;
import com.mall.impl.ProductDAOImpl;
import com.mall.impl.ResourceDaoImpl;
import com.utils.JDBCUtils;
import org.junit.Test;

import java.sql.SQLException;
import java.util.List;


public class ConnectionTest {
    @Test
    public void connTest() {
        System.out.println(JDBCUtils.getConnection());
    }
    @Test
    public  void productTest(){
        IProductDAO dao = new ProductDAOImpl();
        dao.selectProductByCategoryId(10002);

    }
    @Test
    public  void productImgTest(){
        ICategoryDAO dao = new CategoryDAOImpl();
        List<Category> categories = dao.selectAllCategory();
        for(Category category : categories){
            System.out.println(category);
            System.out.println("dasdasdasasdasdadad");
        }
    }
@Test
    public void role(){
        IMmall_userDao dao=new Mmall_userDaoImpl();

    List<User> userList= null;
    try {
        userList = dao.selectUserAll();
    } catch (SQLException e) {
        e.printStackTrace();
    }

    for (User users : userList){
        System.out.println(users);
    }

}
@Test
    public void add(){
        IMmall_userDao dao  = new Mmall_userDaoImpl();

}

}

