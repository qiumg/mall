package com.mall.impl;

import com.mall.IProvinceDAO;
import com.mall.Province;
import com.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
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
}
