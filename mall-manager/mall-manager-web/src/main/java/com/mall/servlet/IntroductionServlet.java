package com.mall.servlet;

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
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.List;

@WebServlet("/introduction")
public class IntroductionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productid = request.getParameter("productid");
        //将访问的商品id加入到cookie
        //从客户端获得Cookie集合
        String list = "";
        Cookie[] cookies = request.getCookies();
//        遍历Cookie
        if (cookies != null && cookies.length > 0){
            for (Cookie c : cookies){
                if ("record".equals(c.getName())){
                    list = c.getValue();
                }
            }
        }
        if (productid != null){

            String[] strings = list.split("#");
            List<String> strings1 = Arrays.asList(strings);
            if(! strings1.contains(productid)){
                list += productid +"#";
                Cookie cookie = new Cookie("record",list);
                cookie.setMaxAge(60*60*24*7);
                response.addCookie(cookie);
            }
        }
        int id = Integer.parseInt(productid);
        IProductService service = new ProductServiceImpl();
        Product product = service.queryProductById(id);
        //System.out.println(product);
        request.setAttribute("product",product);
        request.getRequestDispatcher("/home/introduction.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         doPost(request, response);
    }
}
