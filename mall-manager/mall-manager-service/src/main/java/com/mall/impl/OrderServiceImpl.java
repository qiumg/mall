package com.mall.impl;

import com.mall.IOrderDAO;
import com.mall.IOrderService;
import com.mall.Order;

import java.util.List;

public class OrderServiceImpl implements IOrderService {
    @Override
    public void deleteOrder(int id) {
        IOrderDAO dao = new OrderDAOImpl();
        dao.deleteOrderByid(id);
    }

    @Override
    public void modifyOrder(Order order) {
        IOrderDAO dao = new OrderDAOImpl();
        dao.updateOrder(order);
    }

    @Override
    public Order queryOrderByid(int id) {
        IOrderDAO dao = new OrderDAOImpl();
        Order  order = dao.selectOrderByid(id);
        return order;
    }

    @Override
    public List<Order> queryOrder() {
        IOrderDAO dao = new OrderDAOImpl();
        List<Order>  order = dao.selectAllOrder();
        return order;
    }
}
