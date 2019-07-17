package com.mall;

import java.util.List;

public interface SearchProductDao {
    public List<ProductMode> searchProduct(ProductSearch productSearch) throws Exception;
}
