package com.mall.impl;

import com.mall.IProductSpecsDAO;
import com.mall.Product;
import com.mall.ProductSpecs;
import com.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductSpecDAOImpl implements IProductSpecsDAO {
    @Override
    public List<ProductSpecs> selectAllProductSpec() {
        List<ProductSpecs> productSpecsList = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from mmall_product_specs";
        try {
            productSpecsList = qr.query(sql, new BeanListHandler<>(ProductSpecs.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productSpecsList;
    }

    @Override
    public ProductSpecs selectProductSpecById(int id) {
        ProductSpecs productSpecs = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from mmall_product_specs where id = ?";
        try {
            productSpecs = qr.query(sql, new BeanHandler<>(ProductSpecs.class), id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productSpecs;
    }

    @Override
    public void insertProductSpec(ProductSpecs productSpecs) {

    }

    @Override
    public void updateProductSpec(ProductSpecs productSpecs) {

    }

    @Override
    public ProductSpecs selectByProIdAndSpec(int productid, String specs) {
        ProductSpecs productSpecs = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from mmall_product_specs where product_id = ? and product_specs = ?";
        try {
            productSpecs = qr.query(sql, new BeanHandler<>(ProductSpecs.class), productid, specs);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productSpecs;
    }

    @Override
    public List<Integer> selectProductSpecByPid(int productId) {
        List<Integer> integers = new ArrayList<>();
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select id from mmall_product_specs where product_id = ?";
        try {
            List<ProductSpecs> specs = qr.query(sql, new BeanListHandler<>(ProductSpecs.class), productId);
            for (int i =0 ; i < specs.size();i++) {
                integers.add(specs.get(i).getId());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return integers;
    }
}
