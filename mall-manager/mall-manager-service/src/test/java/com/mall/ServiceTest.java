package com.mall;

import com.mall.impl.ProductServiceImpl;
import org.junit.Test;

public class ServiceTest {
    @Test
    public void Test() {
        IProductService productService =new ProductServiceImpl();
        ProductImg productImg = productService.selectNewProductImg();
        System.out.println(productImg);
    }
}
