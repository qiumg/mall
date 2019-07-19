package com.mall.impl;

import com.mall.IShippingDAO;
import com.mall.Shipping;
import com.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class ShippingDAOImpl implements IShippingDAO {
    @Override
    public List<Shipping> selectShippingByUserId(int userId) {
        List<Shipping> shippings = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from mmall_shipping where user_id = ?";
        try {
            shippings = qr.query(sql, new BeanListHandler<>(Shipping.class), userId);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return shippings;
    }

    @Override
    public void insertShipping(Shipping shipping) {
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "insert into mmall_shipping(user_id,receiver_name,receiver_mobile,receiver_province,receiver_city,receiver_district,receiver_address)values(?,?,?,?,?,?,?)";
        try {
            qr.update(sql,shipping.getUser_Id(),shipping.getReceiver_name(),shipping.getReceiver_mobile(),shipping.getReceiver_province(),shipping.getReceiver_city(),shipping.getReceiver_district(),shipping.getReceiver_address());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
