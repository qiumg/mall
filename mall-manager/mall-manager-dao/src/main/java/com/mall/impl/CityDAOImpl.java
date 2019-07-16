package com.mall.impl;

import com.mall.City;
import com.mall.ICityDAO;
import com.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class CityDAOImpl implements ICityDAO {
    @Override
    public List<City> selectCityByProvinceId(int id) {
        List<City> cities = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select city from cities where provinceid = ?";
        try {
            cities = qr.query(sql, new BeanListHandler<>(City.class), id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cities;
    }
}
