package com.utils;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



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

    public static ComboPooledDataSource getDateSource() {
        ComboPooledDataSource ds = new ComboPooledDataSource("mysql");
        return ds;
    }

}
