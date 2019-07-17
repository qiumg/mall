package com.mall;

import com.mall.impl.SearchProductDaoImpl;
import com.mall.impl.SearchProductImpl;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/SearchProductServlet")
public class SearchProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductSearch productSearch=new ProductSearch();
        String s=request.getParameter("index_none_header_sysc");
        productSearch.setQueryString(s);
        SearchProductService sp=new SearchProductImpl();
        List<ProductMode> list=null;
        try {
            list=sp.searchProduct(productSearch);
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("list",list);
        request.getRequestDispatcher("home/search.jsp").forward(request, response);
    }
}
