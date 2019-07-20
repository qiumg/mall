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
import java.util.List;
@WebServlet("/userServlet.do")//查看所有管理者信息
public class mmall_userServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        IMmall_userService userService=new Mmall_userServiceImpl();
        List<User> userListt = userService.findAll();
        for(User user : userListt){
            System.out.println(user);
        }
        req.setAttribute("userList",userListt);
        req.getRequestDispatcher("/backstage/admin-list.jsp").forward(req,resp);

    }



    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
