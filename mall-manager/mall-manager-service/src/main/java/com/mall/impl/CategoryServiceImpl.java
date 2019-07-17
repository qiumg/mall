package com.mall.impl;

import com.mall.Category;
import com.mall.ICategoryDAO;
import com.mall.ICategoryService;

import java.util.List;

public class CategoryServiceImpl implements ICategoryService {
    @Override
    public List<Category> QueryAllCategory() {
        ICategoryDAO dao = new CategoryDAOImpl();
        List<Category> categories = dao.selectAllCategory();
        return categories;
    }
}
