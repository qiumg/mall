package com.mall.impl;

import com.mall.City;
import com.mall.ICityDAO;
import com.mall.ICityService;

import java.util.List;

public class CityServiceImpl implements ICityService {
    @Override
    public List<City> queryCityByProvinceId(int id) {
        ICityDAO dao = new CityDAOImpl();
        List<City> cities = dao.selectCityByProvinceId(id);
        return cities;
    }
}
