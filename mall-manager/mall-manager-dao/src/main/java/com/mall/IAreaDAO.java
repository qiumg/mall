package com.mall;

import java.util.List;

public interface IAreaDAO {
    //根据城市id查询区信息
    List<Area> selectAreaByCityId(int id);
}
