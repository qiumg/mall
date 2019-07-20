package com.mall.servlet;

import com.mall.IOrderService;
import com.mall.impl.OrderServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/OrderDeleteServlet.do")
public class OrderDeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id=Integer.valueOf(request.getParameter("id"));
        IOrderService orderService=new OrderServiceImpl();
        orderService.deleteOrder(id);
        PrintWriter out =  response.getWriter();
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        out.print(1);
    }




    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }


    }


