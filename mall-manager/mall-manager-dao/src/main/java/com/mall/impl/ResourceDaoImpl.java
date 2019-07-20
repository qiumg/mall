package com.mall.impl;

import com.mall.IResourceDao;
import com.mall.Resource;
import com.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class ResourceDaoImpl implements IResourceDao {


    @Override
    public void insertResource(Resource resource) throws SQLException {
        Connection conn =null;
        String sql = "insert into Resource(id,uri,description,privilege_id) values(?,?,?,?)";
        PreparedStatement pps = null;
        try{
            conn= JDBCUtils.getConnection();
            pps=conn.prepareStatement(sql);
            pps.setInt(1,resource.getId());
            pps.setString(2,resource.getUri());
            pps.setString(3,resource.getDescription());
            pps.setString(4,resource.getPrivilege_id());
        }catch (SQLException e){
            e.printStackTrace();
        }

    }

    @Override
    public void deleteResourceById(int id) {
        Connection conn = null;
        String sql = "delete from Resource where id = ?";
        PreparedStatement pps = null;
            conn=JDBCUtils.getConnection();
            try {
                pps=conn.prepareStatement(sql);
                pps.setInt(1,id);
                pps.executeLargeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
            }

    }

    @Override
    public void update(Resource resource) throws SQLException {
        Connection conn = null;
        String sql = "update Resource set uri = ? ,description=?,privilege_id=? where id=?";
        PreparedStatement pps = null;
        try{
            conn = JDBCUtils.getConnection();
            pps=conn.prepareStatement(sql);
            pps.setString(1,resource.getUri());
            pps.setString(2,resource.getDescription());
            pps.setString(3,resource.getPrivilege_id());
            pps.setInt(4,resource.getId());
            pps.executeLargeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }

    }

    @Override
    public Resource selectResourceById(int id) throws SQLException {
        Connection conn = null;
        PreparedStatement pps = null;
        ResultSet res = null;
        String sql = "select *from Resource where id = ?";
        Resource resource = new Resource();
        try{
            conn = JDBCUtils.getConnection();
            pps=conn.prepareStatement(sql);
            pps.setInt(1,id);
            res=pps.executeQuery();
            while (res.next()){
                resource.setId(res.getInt("id"));
                resource.setUri(res.getString("uri"));
                resource.setDescription(res.getString("description"));
                resource.setPrivilege_id(res.getString("privilege_id"));

            }
        }catch (SQLException e){
            e.printStackTrace();
        }

        return resource;
    }

    @Override
    public List<Resource> selectAll() throws SQLException {
        List<Resource> resources = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from Resource";
        try{
            resources = qr.query(sql,new BeanListHandler<>(Resource.class));
        }catch (SQLException e){
            e.printStackTrace();
        }

        return resources;
    }
}
