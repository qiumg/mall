package com.mall;

import com.mall.impl.CommentServiceImpl;
import com.mall.impl.ProductServiceImpl;
import com.mall.impl.ProvinceServiceImpl;
import org.junit.Test;

import java.sql.SQLOutput;
import java.util.List;

public class ServiceTest {
    @Test
    public void ServiceTest() {
        IProductService productService=new ProductServiceImpl();
         productService.removeProduct(50);
        System.out.println("哈哈哈哈哈哈哈哈哈啊哈哈哈");

    }
    @Test
    public void UpdateTest(){
        IProductService productService=new ProductServiceImpl();
        productService.modifyProduct(new Product());
        System.out.println("啊啊啊啊啊啊啊");
       //productServic.modifyRole(new Role("1"));

    }
    @Test
    public void findAll(){
        IProductService service = new ProductServiceImpl();
        List<Product> productList = null;
        productList = service.findAll();
        for (Product product : productList){
            System.out.println(product);

        }
    }

}
