package com.mall.impl;

import com.mall.IProvinceDAO;
import com.mall.Province;
import com.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class ProvinceDAOImpl implements IProvinceDAO {
    @Override
    public List<Province> selectAllProvince() {
        List<Province> provinces = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from provinces";
        try {
            provinces = qr.query(sql, new BeanListHandler<>(Province.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return provinces;
    }

    @Override
    public Province selectProvinceByPid(int id) {
        Province province = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select province from provinces where provinceid = ?";
        try {
            province = qr.query(sql, new BeanHandler<>(Province.class),id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return province;
    }
}
