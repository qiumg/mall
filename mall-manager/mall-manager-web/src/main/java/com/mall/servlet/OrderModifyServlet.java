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

@WebServlet( "/OrderModifyServlet.do")
public class OrderModifyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String order_no=request.getParameter("order_no");
        int id=Integer.valueOf(request.getParameter("id"));
        int shipping_id=Integer.valueOf(request.getParameter("shipping_id"));
        int status=Integer.valueOf(request.getParameter("status"));


        System.out.println(id);
        Order order = new Order();
        order.setOrder_no(order_no);
        order.setId(id);
        order.setShipping_id(shipping_id);
        order.setStatus(status);



        IOrderService service = new OrderServiceImpl();
        service.modifyOrder(order);
        response.sendRedirect("/orderServlet.do");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }
}
