package com.mall.servlet;

import com.alibaba.fastjson.JSON;
import com.mall.Category;
import com.mall.ICategoryService;
import com.mall.IProductService;
import com.mall.Product;
import com.mall.impl.CategoryServiceImpl;
import com.mall.impl.ProductServiceImpl;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;


@WebServlet("/init")
public class InitServlet extends BaseServlet {

    public void newProduct(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        IProductService service = new ProductServiceImpl();
        List<Product> products = service.queryNewProduct();
        String jsonString = JSON.toJSONString(products);
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.print(jsonString);
    }
    public void getCategory(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        ICategoryService service = new CategoryServiceImpl();
        List<Category> categories = service.QueryAllCategory();
        String jsonString = JSON.toJSONString(categories);
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.print(jsonString);
    }
    public void getProduct(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String categoryname = req.getParameter("categoryname");
        IProductService productService = new ProductServiceImpl();
        List<Product> products = productService.queryProductByCategoryName(categoryname);
        String jsonString = JSON.toJSONString(products);
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.print(jsonString);
    }

}
