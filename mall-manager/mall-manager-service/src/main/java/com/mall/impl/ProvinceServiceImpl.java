package com.mall.impl;

import com.mall.IProvinceDAO;
import com.mall.IProvinceService;
import com.mall.Province;

import java.util.List;

public class ProvinceServiceImpl implements IProvinceService {
    @Override
    public List<Province> queryAllProvince() {
        IProvinceDAO dao = new ProvinceDAOImpl();
        List<Province> provinces = dao.selectAllProvince();
        return provinces;
    }

    @Override
    public Province queryProvinceNameByPid(int id) {
        IProvinceDAO dao = new ProvinceDAOImpl();
        Province province = dao.selectProvinceByPid(id);
        return province;
    }
}
