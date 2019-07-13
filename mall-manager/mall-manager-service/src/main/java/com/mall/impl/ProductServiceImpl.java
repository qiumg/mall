package com.mall.impl;

import com.mall.*;

public class ProductServiceImpl implements IProductService {

    @Override
    public ProductImg selectNewProductImg() {
        IProductDAO dao = new ProductDAOImpl();
        Product product = dao.selectNewProduct();

        IProductImgDAO imgDAO = new ProductImgDAOImpl();
        ProductImg productImg = imgDAO.selectByShpID(product.getId());
        return productImg;
    }
}
