package com.mall.impl;

import com.mall.IProductDAO;
import com.mall.Product;
import com.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class ProductDAOImpl implements IProductDAO {
    @Override
    public List<Product> selectNewProduct() {
        List<Product> products = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from mmall_product ORDER BY create_time DESC";
        try {
            products = qr.query(sql, new BeanListHandler<>(Product.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products.subList(0,3);
    }

    @Override
    public List<Product> selectAllProduct() {
        List<Product> products = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from mmall_product";
        try {
            products = qr.query(sql, new BeanListHandler<>(Product.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    @Override
    public Product selectProductById(int id) {
        Product product = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from mmall_product where id = ?";
        try {
            product = qr.query(sql, new BeanHandler<>(Product.class), id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return product;
    }

    @Override
    public void insertProduct(Product product) {

    }

    @Override
    public void updateProduct(Product product) {

    }

    @Override
    public List<Product> selectProductByCategoryId(int id) {
        List<Product> products = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from mmall_product where category_id = ?";
        try {
            products = qr.query(sql, new BeanListHandler<>(Product.class), id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }
}
