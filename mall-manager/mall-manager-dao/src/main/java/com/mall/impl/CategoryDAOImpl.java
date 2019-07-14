package com.mall.impl;

import com.mall.Category;
import com.mall.ICategoryDAO;
import com.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class CategoryDAOImpl implements ICategoryDAO {
    @Override
    public List<Category> selectAllCategory() {
        List<Category> categories = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from mmall_category";
        try {
            categories = qr.query(sql, new BeanListHandler<>(Category.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return categories;
    }

    @Override
    public Category selectCategoryById(int id) {
        return null;
    }

    @Override
    public void insertCategory(Category category) {

    }

    @Override
    public void updateCategory(Category category) {

    }

    @Override
    public void deleteCategoryByID(int id) {

    }
}
