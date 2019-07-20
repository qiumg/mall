package com.mall;

import java.util.List;

public interface IProductService {
    //查找最新上架的商品
    List<Product> queryNewProduct();
    //根据商品分类名获得商品数据
    List<Product> queryProductByCategoryName(String name);
    //根据商品id查询商品信息
    Product queryProductById(int id);
    //增加商品
    void addProduct(Product product);
    //删除商品
    void removeProduct(int id);
    //修改商品
    void modifyProduct(Product product);
    //查询商品 根据id
    Product findProductById(int id);
    //查询所有的商品
    List<Product> findAll();

}
