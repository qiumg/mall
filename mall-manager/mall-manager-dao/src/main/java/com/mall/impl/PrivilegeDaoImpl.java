package com.mall.impl;

import com.mall.IPrivilegeDao;
import com.mall.Privilege;
import com.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class PrivilegeDaoImpl implements IPrivilegeDao {
    @Override
    public void insertPrivilege(Privilege privilege) throws SQLException {
        Connection conn =null;
        String sql = "insert into privilege(id,name,description) values (?,?,?)";
//		利用PreparedStatement   创建sql语句执行器
        PreparedStatement pps = null;
        try {
            conn= JDBCUtils.getConnection();
            pps = conn.prepareStatement(sql);
            pps.setInt(1, privilege.getId());
            pps.setString(2, privilege.getName());
            pps.setString(3, privilege.getDescription());
            pps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
//		释放资源
        }
//        finally {
//            JDBCUtils.releaseConnection(conn);
//        }
    }

    @Override
    public void deletePrivilegeById(int id) throws SQLException {
        Connection conn = null;
        String sql = "delete from privilege where id=?";
//		利用PreparedStatement   创建sql语句执行器
        PreparedStatement pps = null;
        try {
            conn= JDBCUtils.getConnection();
            pps = conn.prepareStatement(sql);
            pps.setInt(1,id);
            pps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
//		释放资源
        }
//        finally {
//            JDBCUtils.releaseConnection(conn);
//        }
    }

    @Override
    public void update(Privilege privilege) throws SQLException {
        Connection conn = null;
        String sql = "update privilege set name=?,description=? where id=?";
//		利用PreparedStatement   创建sql语句执行器
        PreparedStatement pps = null;
        try {
            conn= JDBCUtils.getConnection();
            pps = conn.prepareStatement(sql);
            pps.setString(1, privilege.getName());
            pps.setString(2, privilege.getDescription());
            pps.setInt(3, privilege.getId());
            pps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
//		释放资源
        }
//        finally {
//            JDBCUtils.releaseConnection(conn);
//        }
    }

    @Override
    public Privilege selectPrivilegeById(int id) throws SQLException {
        Connection conn = null;
//		利用PreparedStatement   创建sql语句执行器
        PreparedStatement pps = null;
        ResultSet res =null;
        String sql = "select * from privilege where id=?";
        Privilege privilege = new Privilege();
        try {
            conn = JDBCUtils.getConnection();
            pps = conn.prepareStatement(sql);
            pps.setInt(1,id);
            res = pps.executeQuery();
            while (res.next()) {

                privilege.setId(res.getInt("id"));
                privilege.setName(res.getString("name"));
                privilege.setDescription(res.getString("description"));

            }
        } catch (SQLException e) {
            e.printStackTrace();
//		释放资源
        }
        return privilege;
    }

    @Override
    public List<Privilege> selectPrivilegeAll() throws SQLException {
        List<Privilege> privileges = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from privilege";
        try {
            privileges = qr.query(sql,new BeanListHandler<>(Privilege.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return privileges;
    }
}
