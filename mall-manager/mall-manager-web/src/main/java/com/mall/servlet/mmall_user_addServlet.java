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

@WebServlet("/save")
public class mmall_user_addServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        int sex = Integer.valueOf(req.getParameter("sex"));
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");
        int role = Integer.valueOf(req.getParameter("role"));
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setSex(sex);
        user.setPhone(phone);
        user.setEmali(email);
        user.setRole(role);
        IMmall_userService userService = new Mmall_userServiceImpl();
        userService.addUser(user);
        resp.sendRedirect("/userServlet.do");

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
