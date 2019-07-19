package com.mall.impl;

import com.mall.ProductMode;
import com.mall.ProductSearch;
import com.mall.SearchProductDao;
import com.utils.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SearchProductDaoImpl implements SearchProductDao {
    @Override
    public List<ProductMode> searchProduct(ProductSearch productSearch) throws Exception {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        con = JDBCUtils.getConnection();//1:获取数据库的连接
        //2:书写sql语句
        String sql = "select * from mmall_product where name like ? OR price LIKE ? OR subtitle LIKE ?";
        ps = con.prepareStatement(sql);//3：预编译
        ps.setString(1, "%" + productSearch.getQueryString() + "%");
        ps.setString(2, "%" + productSearch.getQueryString() + "%");
        ps.setString(3, "%" + productSearch.getQueryString() + "%");
        rs = ps.executeQuery();
        List<ProductMode> list = new ArrayList<ProductMode>();
        while (rs.next()) {
            //System.out.println("1");
            ProductMode p=new ProductMode();
            p.setName(rs.getString("name"));
            p.setPrice(rs.getString("price"));
            p.setSubtitle(rs.getString("subtitle"));
            p.setMain_img(rs.getString("main_image"));
            p.setId(rs.getInt("id"));
            p.setDetail(rs.getString("detail"));
            System.out.println(p);
            list.add(p);
        }
        return list;
    }
}
