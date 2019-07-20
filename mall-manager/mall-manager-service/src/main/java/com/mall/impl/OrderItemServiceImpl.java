package com.mall.impl;


import com.mall.IOrderItemDAO;
import com.mall.IOrderItemService;
import com.mall.Order;
import com.mall.OrderItem;

import java.util.List;


public class OrderItemServiceImpl implements IOrderItemService {
    @Override
    public void deleteOrderItem(int id) {
        IOrderItemDAO dao = new OrderItemDAOImpl();
        dao.deleteOrderItemByid(id);
    }

    @Override
    public void modifyOrderItem(OrderItem orderItem) {
        IOrderItemDAO dao = new OrderItemDAOImpl();
            dao.updateOrderItem(orderItem);
    }

    @Override
    public List<OrderItem> queryOrderItemByid(int id) {
        IOrderItemDAO dao = new OrderItemDAOImpl();
        List<OrderItem> orderItem = null;
        orderItem = dao.selectOrderItemByid(id);
        return orderItem;
    }


    @Override
    public List<OrderItem> queryOrderItem() {
        IOrderItemDAO dao = new OrderItemDAOImpl();
        List<OrderItem>  orderItem = dao.selectAllOrderItem();
        return orderItem;
    }
}
