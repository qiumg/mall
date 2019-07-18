package com.mall;

import java.util.List;

public interface IProvinceDAO {
    //获取所有省的名字
    List<Province> selectAllProvince();
    //根据省id查询省名
    Province selectProvinceByPid(int id);
}
