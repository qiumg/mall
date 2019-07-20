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

@WebServlet("/OrderUpdateServlet.do")
public class OrderUpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id=Integer.valueOf(req.getParameter("id"));
        IOrderService service = new OrderServiceImpl();
        Order order = service.queryOrderByid(id);
        req.setAttribute("order",order);
        req.getRequestDispatcher("/backstage/order-edit.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
