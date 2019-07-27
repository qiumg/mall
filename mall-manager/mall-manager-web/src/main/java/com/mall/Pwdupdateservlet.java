package com.mall;


import com.mall.impl.Pwdupdateserviceimpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/Pwdupdateservlet")
public class Pwdupdateservlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        user user1= (user) session.getAttribute("user");
        int id=user1.getId();
        String oldpwd = req.getParameter("user-old-password");
        String newpwd = req.getParameter("user-new-password");
        String confirmpwd=req.getParameter("user-confirm-password");
        if(newpwd.equals(confirmpwd)){
            Pwdupdateservice p=new Pwdupdateserviceimpl();
            boolean b=p.gengxin(id,oldpwd,newpwd);
            if (b){
                resp.setContentType("text/html;charset=GBK ");
                PrintWriter out = resp.getWriter();
                session.removeAttribute("loginName");
                out.print("<script>alert('修改成功,请重新登录');location.href='/home/login.jsp'</script>");
            } else {
                //request.setAttribute("info", "注册失败");
                resp.setContentType("text/html;charset=GBK ");
                PrintWriter out = resp.getWriter();
                out.print("<script>alert('原密码错误');location.href='/person/password.jsp'</script>");
            }
            resp.setContentType("text/html;charset=GBK ");
            PrintWriter out = resp.getWriter();
            out.print("<script>alert('两次密码不相同');location.href='/person/password.jsp'</script>");
        } else {
            resp.setContentType("text/html;charset=GBK ");
            PrintWriter out = resp.getWriter();
            out.print("<script>alert('两次密码不相同');location.href='/person/password.jsp'</script>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
