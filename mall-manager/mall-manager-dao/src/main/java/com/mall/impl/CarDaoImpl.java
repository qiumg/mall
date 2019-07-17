package com.mall.impl;


import com.mall.Car;
import com.mall.ICarDao;
import com.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class CarDaoImpl implements ICarDao {

    @Override
    public List<Car> selectCar(String user_name) {
        List<Car> cars = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from cart where user_name = ?";
        try {
             cars =  qr.query(sql,new BeanListHandler<>(Car.class),user_name);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return cars;
    }

    @Override
    public void deleteCar(int id) {
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "delete from cart where id = ?";
        try {
            qr.execute(sql,id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void addToCar(String name, String main_image, int quantity, String product_specs, double product_price) {
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "insert into cart(name,main_image,quantity,product_specs,product_price) value (?,?,?,?,?)";
        try {
            qr.execute(sql,new BeanListHandler<>(Car.class),name,main_image,quantity,product_specs,product_price);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
