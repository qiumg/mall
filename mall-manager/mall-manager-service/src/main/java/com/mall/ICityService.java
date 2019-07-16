package com.mall;

import java.util.List;

public interface ICityService {
    List<City> queryCityByProvinceId(int id);
}
