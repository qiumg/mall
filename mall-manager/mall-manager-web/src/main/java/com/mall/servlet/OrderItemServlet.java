package com.mall.servlet;

import com.mall.IOrderItemService;
import com.mall.OrderItem;
import com.mall.impl.OrderItemServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/orderItemServlet.do")
public class OrderItemServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IOrderItemService orderItemService=new OrderItemServiceImpl();
        List<OrderItem> orderItemList = orderItemService.queryOrderItem();
        for(OrderItem orderItem : orderItemList){
            System.out.println(orderItem);
        }
        request.setAttribute("orderItemList",orderItemList);
        request.getRequestDispatcher("/backstage/orderItem-list.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
