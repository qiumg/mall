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
@WebServlet("/mmall_user_modify")
public class Mmall_userModify  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String usrname = req.getParameter("username");
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");
        int role = Integer.valueOf(req.getParameter("role"));
        User user = new User();
        user.setUsername(usrname);
        user.setPhone(phone);
        user.setEmali(email);
        user.setRole(role);
        IMmall_userService userService = new Mmall_userServiceImpl();
        userService.modifyUser(user);
        resp.sendRedirect("/userServlet.do");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
