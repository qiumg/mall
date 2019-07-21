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
import java.util.List;

@WebServlet("/productListServlet.do")
public class productListServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IProductService productService=new ProductServiceImpl();
        List<Product> productList=productService.findAll();
        for(Product product : productList){
            System.out.println(product);
        }
        request.setAttribute("productList",productList);
        request.getRequestDispatcher("backstage/product-list.jsp").forward(request,response);

    }
}