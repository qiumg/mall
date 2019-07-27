package com.test;


import com.mall.*;
import com.mall.impl.*;
import com.utils.JDBCUtils;
import org.junit.Test;

import java.sql.Timestamp;
import java.util.List;


public class ConnectionTest {
    @Test
    public void connTest() {
        System.out.println(JDBCUtils.getConnection());
    }

    @Test
    public void productTest() {
        IProductDAO dao = new ProductDAOImpl();
        Product product = dao.selectProductById(31);
        product.setStock(111111);
        dao.updateProduct(product);

    }

    @Test
    public void productImgTest() {
        IProductSpecsDAO dao = new ProductSpecDAOImpl();
        List<Integer> integers = dao.selectProductSpecByPid(30);
        System.out.println(integers);
    }

}




