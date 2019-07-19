package com.mall.servlet;

import com.mall.ICarDao;
import com.mall.impl.CarDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/pay.do")
public class PayServlet extends BaseServlet {

    public void save (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        ICarDao carDao = new CarDaoImpl();

        String productId = request.getParameter("productId");
        String[] idArr = productId.split(",");

        String productNum = request.getParameter("productNum");
        String[] numArr = productNum.split(",");
       for(int i =0 ;i<idArr.length;i++){
           int id = Integer.parseInt(idArr[i]);
           int quantity = Integer.parseInt(numArr[i]);
           carDao.updateCar(id,quantity);
       }

        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.print(productId);
    }
    public void jump (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String productId = request.getParameter("productId");
        System.out.println(productId);
        request.getRequestDispatcher("/home/pay.jsp").forward(request,response);
    }
}
