package com.mall.servlet;

import com.mall.IProductService;
import com.mall.Product;
import com.mall.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/productUpdateServlet.do")
public class productUpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id=Integer.valueOf(request.getParameter("id"));
        System.out.println(id+"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈");
        IProductService productService=new ProductServiceImpl();
        Product product=productService.findProductById(id);
        request.setAttribute("product",product);
        request.getRequestDispatcher("backstage/productAdd.jsp").forward(request,response);
    }
}
