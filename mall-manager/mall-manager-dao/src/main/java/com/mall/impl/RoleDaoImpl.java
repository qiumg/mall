package com.mall.impl;

import com.mall.IRoleDao;
import com.mall.Role;
import com.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class RoleDaoImpl implements IRoleDao {

    @Override
    public void insertRole(Role role) throws SQLException {
        Connection conn =null;
        String sql = "insert into role(id,name,description) values (?,?,?)";
//		利用PreparedStatement   创建sql语句执行器
        PreparedStatement pps = null;
        try {
            conn= JDBCUtils.getConnection();
            pps = conn.prepareStatement(sql);
            pps.setString(1, role.getId());
            pps.setString(2, role.getName());
            pps.setString(3, role.getDescription());
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
    public void deleteRoleById(String id)  {
        Connection conn = null;
        String sql = "delete from role where id=?";
//		利用PreparedStatement   创建sql语句执行器
        PreparedStatement pps = null;
        try {
            conn= JDBCUtils.getConnection();
            pps = conn.prepareStatement(sql);
            pps.setString(1,id);
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
    public void update(Role role) throws SQLException {
        Connection conn = null;
        String sql = "update role set name=?,description=? where id=?";
//		利用PreparedStatement   创建sql语句执行器
        PreparedStatement pps = null;
        try {
            conn= JDBCUtils.getConnection();
            pps = conn.prepareStatement(sql);
            pps.setString(1, role.getName());
            pps.setString(2, role.getDescription());
            pps.setString(3, role.getId());
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
    public Role selectRoleById(String id) throws SQLException {
        Connection conn = null;
//		利用PreparedStatement   创建sql语句执行器
        PreparedStatement pps = null;
        ResultSet res =null;
        String sql = "select * from role where id=?";
        Role role = new Role();
        try {
            conn = JDBCUtils.getConnection();
            pps = conn.prepareStatement(sql);
            pps.setString(1,id);
            res = pps.executeQuery();
            while (res.next()) {

                role.setId(res.getString("id"));
                role.setName(res.getString("name"));
                role.setDescription(res.getString("description"));

            }
        } catch (SQLException e) {
            e.printStackTrace();
//		释放资源
        }
        return role;
//        String sql = "select * from role where id=?";
//        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
//        Role role =qr.query(sql,new BeanHandler<>(Role.class),id);
//        String sql1 = "select u.username from user_role ur, mmall_user u where ur.role = u.id and ur.role = ?";
//        Set<User> userSet = new HashSet<>();
//        qr.query(sql1, new ResultSetHandler<Set<User>>() {
//            @Override
//            public Set<User> handle(ResultSet resultSet) throws SQLException {
//
//                while (resultSet.next()){
//                    User r = new User();
//                    //r.setId(resultSet.getString("id"));
//                    r.setUsername(resultSet.getString("username"));
//                    // r.setDescription(resultSet.getString("description"));
//
//                    userSet.add(r);
//
//
//                }
//                return userSet;
//
//            }
//        },id);
//            role.setUsers(userSet);


        //return role;
    }






    @Override
    public List<Role> selectRoleAll() throws SQLException {
        List<Role> roles = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from role";
        try {
            roles = qr.query(sql,new BeanListHandler<>(Role.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return roles;
}
}
