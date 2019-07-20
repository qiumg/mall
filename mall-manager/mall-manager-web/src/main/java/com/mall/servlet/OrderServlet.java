package com.mall.servlet;

import com.mall.IOrderService;
import com.mall.Order;
import com.mall.impl.OrderServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/orderServlet.do")
public class OrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IOrderService orderService=new OrderServiceImpl();
        List<Order> orderList = orderService.queryOrder();
        for(Order order : orderList){
            System.out.println(order);
        }
        request.setAttribute("orderList",orderList);
        request.getRequestDispatcher("/backstage/order-list.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
