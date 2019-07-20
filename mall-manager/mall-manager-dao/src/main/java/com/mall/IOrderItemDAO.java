package com.mall;

import java.util.List;

public interface IOrderItemDAO {
    //订单子表删除
    void deleteOrderItemByid(int id);
    //订单子表修改
    void updateOrderItem(OrderItem orderItem);
    //订单子表查询   按id查询
    //OrderItem selectOrderItemByid(int id) ;
    List<OrderItem> selectOrderItemByid(int id) ;
    //订单子表查询  查询所有
    List<OrderItem> selectAllOrderItem();

}
