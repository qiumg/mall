package com.mall;

import java.util.List;

public interface IProductSpecService {
    //根据商品id和特殊属性查询sku
    ProductSpecs queryByPidAndSpecs(int productId , String specs);
    //根据商品id查询出具体商品id
    List<Integer> queryProductSpecByPid(int pid);

    ProductSpecs queryProductSpecById(int id);
}
