package com.test;


import com.mall.IProductDAO;
import com.mall.IProductSpecsDAO;
import com.mall.Product;
import com.mall.ProductSpecs;
import com.mall.impl.ProductDAOImpl;
import com.mall.impl.ProductSpecDAOImpl;
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
        Product product = dao.selectProductById(26);
        System.out.println(product);

    }
    @Test
    public  void productImgTest(){
        IProductSpecsDAO dao = new ProductSpecDAOImpl();
        List<ProductSpecs> productSpecsList = dao.selectAllProductSpec();
        for (ProductSpecs productSpecs : productSpecsList){
            System.out.println(productSpecs);
        }

    }
}
