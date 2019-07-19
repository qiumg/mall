package com.mall.impl;

import com.mall.Area;
import com.mall.IAreaDAO;
import com.mall.IAreaService;

import java.util.List;

public class AreaServiceImpl implements IAreaService {
    @Override
    public List<Area> queryAreaByCityId(int id) {
        IAreaDAO dao = new AreaDAOImpl();
        List<Area> areas = dao.selectAreaByCityId(id);
        return areas;
    }

    @Override
    public Area queryAreaByAid(int id) {
        IAreaDAO dao = new AreaDAOImpl();
        Area area = dao.selectAreaByAreaId(id);
        return area;
    }
}
