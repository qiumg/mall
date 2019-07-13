package com.mall.impl;

import com.mall.IProductSpecsDAO;
import com.mall.Product;
import com.mall.ProductSpecs;
import com.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
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
    public void insertProductSpec(Product product) {

    }

    @Override
    public void updateProductSpec(Product product) {

    }
}
