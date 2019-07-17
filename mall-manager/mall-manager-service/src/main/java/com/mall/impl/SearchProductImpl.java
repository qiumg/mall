package com.mall.impl;

import com.mall.ProductMode;
import com.mall.ProductSearch;
import com.mall.SearchProductService;

import java.util.List;

public class SearchProductImpl implements SearchProductService {
    private SearchProductDaoImpl searchProductDaoImpl=new SearchProductDaoImpl();
    @Override
    public List<ProductMode> searchProduct(ProductSearch productSearch) throws Exception {
        return searchProductDaoImpl.searchProduct(productSearch);
    }
}
