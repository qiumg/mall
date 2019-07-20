package com.mall;

import java.util.List;

public interface IOrderDAO {

    //订单删除
    void deleteOrderByid(int id);
    //订单修改
    void updateOrder(Order order);
    //订单查询   按id查询
    Order selectOrderByid(int id);
    //订单查询  查询所有
    List<Order> selectAllOrder();


}
