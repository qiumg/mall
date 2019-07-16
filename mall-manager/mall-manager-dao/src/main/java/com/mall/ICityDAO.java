package com.mall;

import java.util.List;

public interface ICityDAO {
    //根据省的id查询市名
    List<City> selectCityByProvinceId(int id);

}
