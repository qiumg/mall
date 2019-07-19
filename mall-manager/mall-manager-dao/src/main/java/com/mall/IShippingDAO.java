package com.mall;

import java.util.List;

public interface IShippingDAO {
    //根据用户id查询收货地址信息
    List<Shipping> selectShippingByUserId(int userId);
    //插入一条收货地址信息
    void insertShipping(Shipping shipping);
    //根据地址id删除一条地址信息
    void deleteShippingById(int id);
}
