package com.mall;

import java.util.List;

public interface IProductSpecsDAO {
    //搜索全部sku商品
    List<ProductSpecs> selectAllProductSpec();
    //搜索spu根据商品id；
    ProductSpecs selectProductSpecById(int id);
    //在spu插入一条信息
    void insertProductSpec(ProductSpecs productSpecs);
    //更新spu中的信息
    void updateProductSpec(ProductSpecs productSpecs);
    //根据spu属性和productid查询出sku
    ProductSpecs selectByProIdAndSpec(int productid , String specs);

}
