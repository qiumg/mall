package com.test;


import com.mall.*;
import com.mall.impl.CategoryDAOImpl;
import com.mall.impl.ProductDAOImpl;
import com.mall.impl.ShippingDAOImpl;
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
        Product product = dao.selectProductById(31);
        product.setStock(111111);
        dao.updateProduct(product);

    }
    @Test
    public  void productImgTest(){
//        Shipping shipping = new Shipping();
//        shipping.setUser_Id(1);
//        shipping.setReceiver_name("helloworld");
//        shipping.setReceiver_mobile("13356295928");
//        shipping.setReceiver_province("山西");
//        shipping.setReceiver_city("binzhou");
//        shipping.setReceiver_district("buyang");
//        shipping.setReceiver_address("daxue");
//        IShippingDAO dao = new ShippingDAOImpl();
//        dao.insertShipping(shipping);
//        String color = "白色";
//        String size = "41码";
//        String spec = "{\"color\":\""+color+"\",\"size\":\""+size+"\"}";
//        System.out.println(spec);
        }

    }




