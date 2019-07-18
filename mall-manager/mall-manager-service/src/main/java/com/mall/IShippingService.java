package com.mall;

import java.util.List;

public interface IShippingService {
    List<Shipping> queryShippingByUserId(int userId);

    void addShipping(Shipping shipping);
}
