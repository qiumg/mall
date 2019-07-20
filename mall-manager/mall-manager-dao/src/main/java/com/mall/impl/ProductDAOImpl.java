package com.mall.impl;

import com.mall.IProductDAO;
import com.mall.Product;
import com.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class ProductDAOImpl implements IProductDAO {
    @Override
    public List<Product> selectAll() {
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql="select * from mmall_product";
        List<Product> productList= null;
        try {
            productList = qr.query(sql,new BeanListHandler<>(Product.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productList;
    }

    @Override
    public void deleteProductById(int id) {
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql="delete from mmall_product where id=?";
        try {
            qr.update(sql,id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


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
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());

        Date getDate = Calendar.getInstance().getTime();
        String dateStr = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(getDate);

        String sql="insert into mmall_product(category_id,name,subTitle,main_Image,attribute_List,price,stock,status,create_time,update_time) values(?,?,?,?,?,?,?,?,?,?) ";
        try {
            qr.update(sql,product.getCategory_id(),product.getName(),product.getSubTitle(),product.getMain_Image(),product.getAttribute_List(),product.getPrice(),product.getStock(),product.getStatus(),dateStr,dateStr);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public void updateProduct(Product product) {
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql="update mmall_product set category_id=?,name=?,subTitle=?,main_Image=?,attribute_List=?,price=?,stock=?,status=? where id=?";
        try {
            qr.update(sql,product.getCategory_id(),product.getName(),product.getSubTitle(),product.getMain_Image(),product.getAttribute_List(),product.getPrice(),product.getStock(),product.getStatus(),product.getId());
        } catch (SQLException e) {
            e.printStackTrace();
        }
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
