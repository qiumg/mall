package com.mall.impl;

import com.mall.IOrderDAO;
import com.mall.Order;
import org.apache.commons.dbutils.QueryRunner;

import java.sql.SQLException;
import java.util.List;
import com.utils.JDBCUtils;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

public class OrderDAOImpl implements IOrderDAO {


    @Override
    public void deleteOrderByid(int id) {
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "delete from mmall_order where id = ?";
        try {
            qr.execute(sql,id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public void updateOrder(Order order) {
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "update mmall_order set shipping_id = ?,payment = ?,status = ? where order_no=?";
        try {
            qr.update(sql,order.getShipping_id(),order.getPayment(),order.getStatus(),order.getOrder_no());
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public Order selectOrderByid(int id) {
        Order order = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from mmall_order where id = ?";
        try {
            order = qr.query(sql,new BeanHandler<>(Order.class),id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return order;
    }

    @Override
    public List<Order> selectAllOrder() {
        List<Order>  orderList = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from mmall_order";

        try {
            orderList = qr.query(sql,new BeanListHandler<>(Order.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return orderList;
    }


}
