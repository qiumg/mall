package com.mall.impl;

import com.mall.IOrderItemDAO;
import com.mall.OrderItem;
import com.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class OrderItemDAOImpl implements IOrderItemDAO {

    @Override
    public void deleteOrderItemByid(int id) {
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "delete from mmall_order_item where id = ?";
        try {
            qr.execute(sql,id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateOrderItem(OrderItem orderItem) {
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "update mmall_order_item set current_unit_price = ?,quantity = ?,total_price = ?where order_no=?";
        try {
            qr.update(sql,orderItem.getCurrent_unit_price(),orderItem.getQuantity(),orderItem.getTotal_price(),orderItem.getOrder_no());
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public List<OrderItem> selectOrderItemByid(int id) {
        List<OrderItem> orderItem = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from mmall_order_item where id = ?";
        try {
            orderItem = qr.query(sql, new BeanListHandler<>(OrderItem.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orderItem;
    }

    @Override
    public List<OrderItem> selectAllOrderItem() {
        List<OrderItem>  orderItemList = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from mmall_order_item";
        try {
            orderItemList = qr.query(sql,new BeanListHandler<>(OrderItem.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orderItemList;
    }
}
