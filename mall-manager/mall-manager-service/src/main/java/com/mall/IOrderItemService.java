package com.mall;

import java.util.List;

public interface IOrderItemService {
    //删除订单子表
    void deleteOrderItem(int id);
    //修改订单子表
    void modifyOrderItem(OrderItem orderItem);
    //按id查询订单子表
    //OrderItem findOrderiItemByid (int id);
    List<OrderItem> queryOrderItemByid (int id);
    //查询全部订单子表
    List<OrderItem> queryOrderItem();

}
