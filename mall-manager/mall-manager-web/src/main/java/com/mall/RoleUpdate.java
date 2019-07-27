package com.mall;


import com.mall.impl.RoleServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/update.do")
public class RoleUpdate extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        IRoleService service = new RoleServiceImpl();

        Role role = null;
        try {
            role = service.selectRoleById(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("role",role);
        req.getRequestDispatcher("/backstage/admin-role-add.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
