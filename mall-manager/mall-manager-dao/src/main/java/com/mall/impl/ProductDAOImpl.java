package com.mall.impl;

import com.mall.IProductDAO;
import com.mall.Product;
import com.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import java.sql.SQLException;
import java.util.List;

public class ProductDAOImpl implements IProductDAO {
    @Override
    public Product selectByName(String name) {
        return null;
    }

    @Override
    public Product selectNewProduct() {
        List<Product> products = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from t_mall_product ORDER BY id DESC ";
        try {
            products = qr.query(sql, new BeanListHandler<>(Product.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products.get(0);
    }

    @Override
    public List<Product> selectAll() {
        List<Product> products = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from t_mall_product";
        try {
            products = qr.query(sql, new BeanListHandler<>(Product.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    @Override
    public void updateProduct(Product product) {

    }

    @Override
    public void deleteProductByID(int id) {

    }

    @Override
    public void insertProduct(Product product) {

    }
}
