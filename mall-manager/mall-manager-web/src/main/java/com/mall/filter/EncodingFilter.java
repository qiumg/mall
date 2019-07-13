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

@WebFilter(filterName = "encodingFilter",urlPatterns = "/*" ,initParams = {@WebInitParam(name="encoding",value ="UTF-8")})
public class EncodingFilter extends HttpFilter {
    private String encoding="";

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        String filterName =   filterConfig.getFilterName();
        encoding = filterConfig.getInitParameter("encoding");
    }

    @Override
    protected void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {
        // 设置请求的参数的字符集
        //System.out.println("采用统一的字符集");
        if(!"".equals(encoding)&& encoding!=null){
            request.setCharacterEncoding(encoding);
        }else{
            encoding="UTF-8";
        }

        chain.doFilter(request,response);
    }

    @Override
    public void destroy() {
        encoding="";
    }
}
