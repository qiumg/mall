package com.test;


import com.mall.*;
import com.mall.impl.CategoryDAOImpl;
import com.mall.impl.ProductDAOImpl;
import com.utils.JDBCUtils;
import org.junit.Test;

import java.util.List;


public class ConnectionTest {
    @Test
    public void connTest() {
        System.out.println(JDBCUtils.getConnection());
    }

    }

