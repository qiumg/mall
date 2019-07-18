package com.mall;

import java.util.List;

public interface IAreaService {
    List<Area> queryAreaByCityId(int id);

    Area queryAreaByAid(int id);
}
