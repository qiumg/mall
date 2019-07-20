package com.mall.servlet;

import com.mall.IMmall_userService;

import com.mall.User;
import com.mall.impl.Mmall_userServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/mm_userUpdate")//修改
public class Mmall_userUpdate extends HttpServlet {
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

       int id=Integer.valueOf(req.getParameter("id"));
        IMmall_userService mma_userService = new Mmall_userServiceImpl();

        User user = null;
        try {
            user = mma_userService.selectUserById(id);
       } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("User",user);
       req.getRequestDispatcher("/backstage/admin-list.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
   }
}

