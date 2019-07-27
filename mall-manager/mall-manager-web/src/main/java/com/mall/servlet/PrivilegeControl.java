package com.mall.servlet;

import com.mall.IPrivilegeService;
import com.mall.IRoleService;
import com.mall.Privilege;
import com.mall.Role;
import com.mall.impl.PrivilegeServiceImpl;
import com.mall.impl.RoleServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;

@WebServlet("/privilegechange.do")
public class PrivilegeControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fun =req.getParameter("_method");
        switch (fun){
            case "add":
                add(req,resp);
                break;
            case "update":
                update(req,resp);
                break;
            case "delete":
                delete(req,resp);
                break;
            case "save":
                save(req,resp);
                break;
            case "modify":
                modify(req,resp);

        }
    }

    public void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String Id = req.getParameter("id");
        int id = Integer.parseInt(Id);
        IPrivilegeService service = new PrivilegeServiceImpl();

        Privilege privilege = null;
        try {
            privilege = service.selectPrivilegeById(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("privilege",privilege);
        req.getRequestDispatcher("/backstage/admin-privilege-add.jsp").forward(req,resp);
    }
    public void delete(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String Id =req.getParameter("id");
        int id = Integer.parseInt(Id);
        IPrivilegeService service = new PrivilegeServiceImpl();
        service.removePrivilege(id);
        PrintWriter out =  resp.getWriter();
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        out.print(1);
    }
    public void save(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        req.setCharacterEncoding("UTF-8");
        String Id = req.getParameter("id");
        int id = Integer.parseInt(Id);
        String name = req.getParameter("name");
        //name = new String(name.getBytes("iso-8859-1"),"UTF-8");
        String ds = req.getParameter("description");
        //ds = new String(ds.getBytes("iso-8859-1"),"UTF-8");
        Privilege privilege = new Privilege();
        privilege.setId(id);
        privilege.setName(name);
        privilege.setDescription(ds);
        IPrivilegeService service = new PrivilegeServiceImpl();
        service.addPrivilege(privilege);
        resp.sendRedirect("/privilege");
    }

    public void add(HttpServletRequest req, HttpServletResponse resp) {
        try {
            req.getRequestDispatcher("/backstage/admin-privilege-add.jsp").forward(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
    public void modify(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        try {
            req.setCharacterEncoding("UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        String Id = req.getParameter("id");
        int id = Integer.parseInt(Id);
        String name = req.getParameter("name");
        //name = new String(name.getBytes("iso-8859-1"),"UTF-8");
        String ds = req.getParameter("description");
        //ds = new String(ds.getBytes("iso-8859-1"),"UTF-8");
        System.out.println(id);
        System.out.println("水水水水水水水水水水水水水水水水水水水水水水水水水");
        Privilege privilege = new Privilege();
        privilege.setId(id);
        privilege.setName(name);
        privilege.setDescription(ds);
        IPrivilegeService service = new PrivilegeServiceImpl();
        service.modifyPrivilege(privilege);
        resp.sendRedirect("/privilege");

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
