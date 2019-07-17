package com.mall;

import java.util.List;

public interface IProductService {
    //查找最新上架的商品
    List<Product> queryNewProduct();
    //根据商品分类名获得商品数据
    List<Product> queryProductByCategoryName(String name);
    //根据商品id查询商品信息
    Product queryProductById(int id);
}
