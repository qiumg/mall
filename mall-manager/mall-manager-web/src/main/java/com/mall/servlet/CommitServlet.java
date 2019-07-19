package com.mall.servlet;

import com.mall.ICarDao;
import com.mall.impl.CarDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/commit.do")
public class CommitServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ICarDao carDao = new CarDaoImpl();
        String productId = request.getParameter("id");
        String[] idDel = productId.split(",");
        for (int i = 0 ; i < idDel.length ; i++){
            int id = Integer.parseInt(idDel[i]);
            carDao.deleteCar(id);
        }
        request.getRequestDispatcher("/home/success.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
