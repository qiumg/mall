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
    public void addToCar(int id, String user_name, String name, String main_image, int quantity, String product_specs, double product_price) {
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "insert into cart(id,user_name,name,main_image,quantity,product_specs,product_price) value(?,?,?,?,?,?,?)";
        try {
            qr.insert(sql,new BeanListHandler<>(Car.class),id,user_name,name,main_image,quantity,product_specs,product_price);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    @Override
    public void updateCar(int quantity, int id) {
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "UPDATE cart set quantity = ? where id = ?";
        try {
            qr.update(sql,quantity,id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Car selectById(int id) {
        Car car = new Car();
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from cart where id = ?";

        try {
            car = qr.query(sql,new BeanHandler<>(Car.class),id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return car;
    }
}
