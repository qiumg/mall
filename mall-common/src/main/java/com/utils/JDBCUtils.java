package com.utils;



import com.mchange.v2.c3p0.ComboPooledDataSource;

import java.sql.*;


public class JDBCUtils {

    static ComboPooledDataSource cpds = null;


    static {
        cpds = new ComboPooledDataSource();

    }

    public static Connection getConnection() {
        Connection conn = null;
        try {
            conn = cpds.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    public static void releaseSource(ResultSet res, Statement stmt, Connection conn) {
        if (stmt != null) {
            try {
                stmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                if (conn != null) {
                    try {
                        conn.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    public static ComboPooledDataSource getDataSource() {
        return cpds;
    }
    public static boolean addUpdateDelete(String sql, Object[] arr) {
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = JDBCUtils.getConnection();//第一步 ：连接数据库的操作
            ps = con.prepareStatement(sql);//第二步：预编译
            //第三步：设置值
            if (arr != null && arr.length != 0) {
                for (int i = 0; i < arr.length; i++) {
                    ps.setObject(i + 1, arr[i]);
                }
            }
            int count = ps.executeUpdate();//第四步：执行sql语句
            //System.out.println(count);
            if (count > 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
