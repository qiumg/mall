package com.mall.impl;

import com.mall.IShippingDAO;
import com.mall.IShippingService;
import com.mall.Shipping;

import java.util.List;

public class ShippingServiceImpl implements IShippingService {
    @Override
    public List<Shipping> queryShippingByUserId(int userId) {
        IShippingDAO dao = new ShippingDAOImpl();
        List<Shipping> shippings = dao.selectShippingByUserId(userId);
        return shippings;
    }

    @Override
    public void addShipping(Shipping shipping) {
        IShippingDAO dao = new ShippingDAOImpl();
        dao.insertShipping(shipping);
    }
}
