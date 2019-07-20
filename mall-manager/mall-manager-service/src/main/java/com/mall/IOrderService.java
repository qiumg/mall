package com.mall;

import java.util.List;

public interface IOrderService {
    //删除订单
    void deleteOrder(int id);
    //修改订单
    void modifyOrder(Order order);
    //按id查询订单
    Order queryOrderByid (int id);
    //查询所有订单
    List<Order> queryOrder();

}
