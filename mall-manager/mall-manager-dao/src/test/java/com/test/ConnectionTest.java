package com.test;

import com.utils.JDBCUtils;
import org.junit.Test;

public class ConnectionTest {
    @Test
    public void connTest() {
        System.out.println(JDBCUtils.getConnection());
    }
}
