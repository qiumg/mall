package com.mall;

public interface IProductSpecService {
    ProductSpecs queryByPidAndSpecs(int productId , String specs);
}
