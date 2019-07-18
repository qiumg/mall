package com.mall;

import com.mall.impl.userdaoimpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/userregister")
public class userregisterservlet extends HttpServlet {
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
        String passwordRepeat = request.getParameter("passwordRepeat");
        String phone = request.getParameter("phone");
        if(name.equals("")){
            response.setContentType("text/html;charset=GBK ");
            PrintWriter out = response.getWriter();
            out.print("<script>alert('用户名不能为空');location.href='home/register.jsp'</script>");
        }else if(password.equals("")){
            response.setContentType("text/html;charset=GBK ");
            PrintWriter out = response.getWriter();
            out.print("<script>alert('密码不能为空');location.href='home/register.jsp'</script>");
        } else if (!password.equals(passwordRepeat)) {
            response.setContentType("text/html;charset=GBK ");
            PrintWriter out = response.getWriter();
            out.print("<script>alert('两次密码不相同');location.href='home/register.jsp'</script>");
        } else {
            //获取register.jsp页面提交的账号和密码设置到实体类User中
            user.setName(name);
            user.setPassword(password);
            user.setPhone(phone);
            //引入数据交互层
            userdao dao = new userdaoimpl();
            boolean flag = dao.register(user);
            if (flag) {
                //request.setAttribute("info", "注册成功");
                //request.getRequestDispatcher("home/login.jsp").forward(request, response);
                response.setContentType("text/html;charset=GBK ");
                PrintWriter out = response.getWriter();
                out.print("<script>alert('注册成功');location.href='home/login.jsp'</script>");
            } else {
                //request.setAttribute("info", "注册失败");
                response.setContentType("text/html;charset=GBK ");
                PrintWriter out = response.getWriter();
                out.print("<script>alert('注册失败（用户已存在）');location.href='home/register.jsp'</script>");
            }
        }
    }
}
