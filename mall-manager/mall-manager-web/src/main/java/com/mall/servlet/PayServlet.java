package com.mall.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/pay.do")
public class PayServlet extends BaseServlet {

    public void save (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String productId = request.getParameter("productId");
        String[] split = productId.split(",");
        for(String id : split){
            System.out.println(id);
        }
        String productNum = request.getParameter("productNum");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.print(productId);
    }
    public void jump (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String productId = request.getParameter("productId");
        System.out.println(productId);
        request.getRequestDispatcher("/home/pay.jsp").forward(request,response);
    }
}
