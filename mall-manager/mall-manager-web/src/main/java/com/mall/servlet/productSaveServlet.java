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
import java.sql.Timestamp;

@WebServlet("/productSaveServlet.do")
public class productSaveServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int category_id=Integer.valueOf(request.getParameter("category_id"));
        String name=request.getParameter("name");
        String subTitle=request.getParameter("subtitle");
        String attribute_List=request.getParameter("attribute_list");
        double price=Double.valueOf(request.getParameter("price"));
        int stock=Integer.valueOf(request.getParameter("stock"));
        int status=Integer.valueOf(request.getParameter("status"));
        String main_Image=request.getParameter("main_Image");
        main_Image="images/"+main_Image;
      /* Timestamp create_time=Timestamp.valueOf(request.getParameter("create_time"));
        Timestamp update_time=Timestamp.valueOf(request.getParameter("update_time"));*/
        Product product=new Product();
        product.setCategory_id(category_id);
        product.setName(name);
        product.setSubTitle(subTitle);
        product.setAttribute_List(attribute_List);
        product.setPrice(price);
        product.setStock(stock);
        product.setStatus(status);
        product.setMain_Image(main_Image);
       /*product.setCreate_time(create_time);
       product.setUpdate_time(update_time);*/
        System.out.println("和经济结构和改革"+product);
        IProductService productService=new ProductServiceImpl();
        productService.addProduct(product);
        //重定向
        response.sendRedirect("/productListServlet.do");
    }
}