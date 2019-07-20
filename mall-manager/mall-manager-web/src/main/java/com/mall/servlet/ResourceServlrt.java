package com.mall.servlet;

import com.mall.IResourceService;
import com.mall.Resource;
import com.mall.impl.ResourceServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

//请求的servlet
@WebServlet("/resource")
public class ResourceServlrt extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        IResourceService service = new ResourceServiceImpl();
       List<Resource> resourceList= service.findAll();
       req.setAttribute("resourceList",resourceList);
       req.getRequestDispatcher("resourceIndex.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
