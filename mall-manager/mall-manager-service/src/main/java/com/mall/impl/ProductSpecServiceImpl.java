package com.mall.impl;

import com.mall.IProductSpecService;
import com.mall.IProductSpecsDAO;
import com.mall.ProductSpecs;

import java.util.List;

public class ProductSpecServiceImpl implements IProductSpecService {
    @Override
    public ProductSpecs queryByPidAndSpecs(int productId, String specs) {
        IProductSpecsDAO dao = new ProductSpecDAOImpl();
        ProductSpecs productSpecs = dao.selectByProIdAndSpec(productId, specs);
        return productSpecs;
    }

    @Override
    public List<Integer> queryProductSpecByPid(int pid) {
        IProductSpecsDAO dao = new ProductSpecDAOImpl();
        List<Integer> integers = dao.selectProductSpecByPid(pid);
        return integers;
    }

    @Override
    public ProductSpecs queryProductSpecById(int id) {
        IProductSpecsDAO dao = new ProductSpecDAOImpl();
        ProductSpecs productSpecs = dao.selectProductSpecById(id);
        return  productSpecs;
    }
}
