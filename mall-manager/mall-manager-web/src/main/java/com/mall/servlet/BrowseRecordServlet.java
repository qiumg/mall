package com.mall.servlet;

import com.alibaba.fastjson.JSON;
import com.mall.IProductService;
import com.mall.Product;
import com.mall.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@WebServlet("/browserecord")
public class BrowseRecordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IProductService service= new ProductServiceImpl();
        String list = "";
        Cookie[] cookies = request.getCookies();
        if (cookies != null && cookies.length > 0){
            for (Cookie c : cookies){
                if ("record".equals(c.getName())){
                    list = c.getValue();
                }
            }
        }
        if(!list.equals("")){
            String[] strings = list.split("#");
            List<Product> products = new ArrayList<>();
            for (String s : strings){
                int id = Integer.parseInt(s);
                Product product = service.queryProductById(id);
                products.add(product);
            }
            Collections.reverse(products);
            String jsonString = JSON.toJSONString(products);
            response.setCharacterEncoding("UTF-8");
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.print(jsonString);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doPost(request, response);
    }
}
