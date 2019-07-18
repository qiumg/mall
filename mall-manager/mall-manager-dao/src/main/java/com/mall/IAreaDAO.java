package com.mall;

import java.util.List;

public interface IAreaDAO {
    //根据城市id查询区信息
    List<Area> selectAreaByCityId(int id);
    //根据地区id查询地区信息
    Area selectAreaByAreaId(int id);
}
