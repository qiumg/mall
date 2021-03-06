package com.mall.impl;

import com.mall.Area;
import com.mall.IAreaDAO;
import com.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class AreaDAOImpl implements IAreaDAO {
    @Override
    public List<Area> selectAreaByCityId(int id) {
        List<Area> areas = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from areas where cityid = ?";
        try {
            areas = qr.query(sql, new BeanListHandler<>(Area.class), id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return areas;
    }

    @Override
    public Area selectAreaByAreaId(int id) {
        Area area = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select area from areas where areaid = ?";
        try {
            area = qr.query(sql, new BeanHandler<>(Area.class), id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return area;
    }
}
