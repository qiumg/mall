package com.mall;

import java.util.List;

public interface IProvinceService {
    List<Province> queryAllProvince();

    Province queryProvinceNameByPid(int id);
}
