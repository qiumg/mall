package com.mall;

import com.mall.impl.RoleServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/modify.do")
public class RoleModify extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        //name = new String(name.getBytes("iso-8859-1"),"UTF-8");
        String ds = req.getParameter("description");
        //ds = new String(ds.getBytes("iso-8859-1"),"UTF-8");
        System.out.println(id);
        System.out.println("水水水水水水水水水水水水水水水水水水水水水水水水水");
        Role role = new Role();
        role.setId(id);
        role.setName(name);
        role.setDescription(ds);
        IRoleService service = new RoleServiceImpl();
        service.modifyRole(role);
        resp.sendRedirect("/role");


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
