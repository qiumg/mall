package com.test;

import com.mall.IProductDAO;
import com.mall.IProductImgDAO;
import com.mall.Product;
import com.mall.ProductImg;
import com.mall.impl.ProductDAOImpl;
import com.mall.impl.ProductImgDAOImpl;
import com.utils.JDBCUtils;
import org.junit.Test;

public class ConnectionTest {
    @Test
    public void connTest() {
        System.out.println(JDBCUtils.getConnection());
    }
    @Test
    public  void productTest(){
        IProductDAO dao= new ProductDAOImpl();
        Product product = dao.selectNewProduct();
        System.out.println(product);

    }
    @Test
    public  void productImgTest(){
        IProductImgDAO dao= new ProductImgDAOImpl();
        ProductImg productImg = dao.selectByShpID(1);
        System.out.println(productImg);
    }
}
