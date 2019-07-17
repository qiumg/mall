package com.mall;

import java.util.List;

public interface SearchProductService {
    public List<ProductMode> searchProduct(ProductSearch productSearch) throws Exception;
}
