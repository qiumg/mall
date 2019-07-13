package com.mall;

import com.alibaba.fastjson.JSON;
import com.mall.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/init")
public class InitServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        IProductService productService = new ProductServiceImpl();
        ProductImg productImg = productService.selectNewProductImg();
        //String jsonString = JSON.toJSONString(productImg);
        req.setAttribute("productImg",productImg);
        req.getRequestDispatcher("/index.jsp");
        //this.getClass().getMethod().invoke();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
