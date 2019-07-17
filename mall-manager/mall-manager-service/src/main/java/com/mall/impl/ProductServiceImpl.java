package com.mall.impl;

import com.mall.ICategoryDAO;
import com.mall.IProductDAO;
import com.mall.IProductService;
import com.mall.Product;

import java.util.List;

public class ProductServiceImpl implements IProductService {
    @Override
    public List<Product> queryNewProduct() {
        IProductDAO dao = new ProductDAOImpl();
        List<Product> products = dao.selectNewProduct();
        return products;
    }

    @Override
    public List<Product> queryProductByCategoryName(String name) {
        ICategoryDAO dao = new CategoryDAOImpl();
        int id = dao.selectIdByName(name);
        IProductDAO dao1 = new ProductDAOImpl();
        List<Product> products = dao1.selectProductByCategoryId(id);
        return products;
    }

    @Override
    public Product queryProductById(int id) {
        IProductDAO dao = new ProductDAOImpl();
        Product product = dao.selectProductById(id);
        return product;
    }
}
