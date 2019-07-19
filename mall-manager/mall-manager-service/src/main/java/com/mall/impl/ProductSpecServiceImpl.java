package com.mall.impl;

import com.mall.IProductSpecService;
import com.mall.IProductSpecsDAO;
import com.mall.ProductSpecs;

public class ProductSpecServiceImpl implements IProductSpecService {
    @Override
    public ProductSpecs queryByPidAndSpecs(int productId, String specs) {
        IProductSpecsDAO dao = new ProductSpecDAOImpl();
        ProductSpecs productSpecs = dao.selectByProIdAndSpec(productId, specs);
        return productSpecs;
    }
}
