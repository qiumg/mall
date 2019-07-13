package com.mall;

import java.util.List;

public interface IProductDAO {
    //根据商品名搜索商品
    Product selectByName(String name);
    //搜索最新上架产品
    Product selectNewProduct();
    //搜索全部的商品
    List<Product> selectAll();
    //修改商品的相关信息
    void updateProduct(Product product);
    //删除有关商品
    void deleteProductByID (int id);
    //插入一个新建的商品
    void insertProduct(Product product);
}
