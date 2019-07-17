package com.test;


import com.mall.*;
import com.mall.impl.CategoryDAOImpl;
import com.mall.impl.ProductDAOImpl;
import com.utils.JDBCUtils;
import org.junit.Test;

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
        }
    }

    }

