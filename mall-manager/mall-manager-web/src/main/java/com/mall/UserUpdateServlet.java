package com.mall;

import com.mall.impl.UserUpdateServiceimpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/UserUpdateServlet")
public class UserUpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        String oldname= (String) session.getAttribute("loginName");
        user user = new user();
        String name = request.getParameter("username");
        int sex = Integer.parseInt(request.getParameter("radio10"));
        String phone = request.getParameter("user-phone");
        String email = request.getParameter("user-email");
        user.setName(name);
        user.setSex(sex);
        user.setPhone(phone);
        user.setEmail(email);
        UserUpdateService uus=new UserUpdateServiceimpl();
        boolean b=uus.userupdate(user,oldname);
        //response.sendRedirect(request.getContextPath()+"/indexservlet");
        if (b) {
            //request.setAttribute("info", "注册成功");
            //request.getRequestDispatcher("home/login.jsp").forward(request, response);
            response.setContentType("text/html;charset=GBK ");
            PrintWriter out = response.getWriter();
            session.setAttribute("loginName",user.getName());
            out.print("<script>alert('修改成功');location.href='person/information.jsp'</script>");
        } else {
            //request.setAttribute("info", "注册失败");
            response.setContentType("text/html;charset=GBK ");
            PrintWriter out = response.getWriter();
            out.print("<script>alert('修改失败');location.href='person/information.jsp'</script>");
        }
    }
}
