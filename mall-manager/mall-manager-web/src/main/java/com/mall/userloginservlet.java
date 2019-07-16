package com.mall;

import com.mall.impl.userdaoimpl;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/userlogin")
public class userloginservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        user user = new user();
        //获取login.jsp页面提交的账号和密码
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        if(name.equals("")){
            response.setContentType("text/html;charset=GBK ");
            PrintWriter out = response.getWriter();
            out.print("<script>alert('用户名不能为空!');location.href='home/login.jsp'</script>");
        }else {
            //测试数据
            //System.out.println(name + " " + password);
            //获取login.jsp页面提交的账号和密码设置到实体类User中
            user.setName(name);
            user.setPassword(password);
            //引入数据交互层
            userdao dao = new userdaoimpl();
            user us = dao.login(user);
            //测试返回的值
            //System.out.println(us);
            if (us != null) {
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            } else {
                //response.sendRedirect("home/login.jsp?error=yes");
                response.setContentType("text/html;charset=GBK ");
                PrintWriter out = response.getWriter();
                out.print("<script>alert('用户名或密码错误!');location.href='home/login.jsp'</script>");
            }
        }
    }
}
