package com.mall.filter;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebFilter(urlPatterns = "/*" ,initParams = {@WebInitParam(name="uncheckurl",value = "/,/index.jsp")})
public class indexInitFilter extends HttpFilter {
    private List<String> uncheckList = new ArrayList<>();

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        String uncheckurl =   filterConfig.getInitParameter("uncheckurl");
        String[] strs = uncheckurl.split(",");
        uncheckList = Arrays.asList(strs);
    }

    @Override
    protected void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {
        String reqUrl = request.getRequestURI();
        System.out.println(reqUrl);

        if(!uncheckList.contains(reqUrl)){
            chain.doFilter(request,response);
        }
        else{
            request.getRequestDispatcher("/init");
        }


    }

    @Override
    public void destroy() {

    }

}
