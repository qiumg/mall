package com.mall;

import java.util.List;

public interface IProductDAO {
    //搜索spu中最新添加的商品
    List<Product> selectNewProduct();
    //搜索全部spu商品
    List<Product> selectAllProduct();
    //搜索spu根据商品id；
    Product selectProductById(int id);
    //在spu插入一条信息
    void insertProduct(Product product);
    //更新spu中的信息
    void updateProduct(Product product);
    //根据分类id查询信息
    List<Product> selectProductByCategoryId(int id);
}
