package com.mall.impl;

import com.mall.IProductDAO;
import com.mall.IProductService;
import com.mall.Product;

public class ProductServiceImpl implements IProductService {
    @Override
    public Product QueryNewProduct() {
        IProductDAO dao = new ProductDAOImpl();
        Product product = dao.selectNewProduct();
        return product;
    }
}
