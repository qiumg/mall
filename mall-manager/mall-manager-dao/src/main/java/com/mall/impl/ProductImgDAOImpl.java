package com.mall.impl;

import com.mall.IProductImgDAO;
import com.mall.ProductImg;
import com.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;

public class ProductImgDAOImpl implements IProductImgDAO {
    @Override
    public ProductImg selectByShpID(int id) {
        ProductImg productImg = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from t_mall_product_image where shp_id = ?";
        try {
            productImg = qr.query(sql, new BeanHandler<>(ProductImg.class), id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productImg;
    }
}
