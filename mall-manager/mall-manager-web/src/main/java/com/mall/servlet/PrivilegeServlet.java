package com.mall.servlet;

import com.mall.IPrivilegeService;

import com.mall.Privilege;
import com.mall.Role;
import com.mall.impl.PrivilegeServiceImpl;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/privilege")
public class PrivilegeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        IPrivilegeService service = new PrivilegeServiceImpl();
        List<Privilege> privilegeList = service.findAll();
        req.setAttribute("privilegeList",privilegeList);
        req.getRequestDispatcher("/backstage/admin-privilege.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
