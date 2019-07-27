package com.mall.servlet;

import com.alibaba.fastjson.JSON;
import com.mall.Comment;
import com.mall.ICommentService;
import com.mall.IProductSpecService;
import com.mall.ProductSpecs;
import com.mall.impl.CommentServiceImpl;
import com.mall.impl.ProductSpecServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/comment.do")
public class CommentServlet extends BaseServlet {
   public void query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
       String productid = request.getParameter("productid");
       int pid = Integer.parseInt(productid);
       IProductSpecService specService = new ProductSpecServiceImpl();
       List<Integer> integers = specService.queryProductSpecByPid(pid);
       ICommentService service = new CommentServiceImpl();
       List<Comment> comments= new ArrayList<>();
       for (Integer i:integers){
           List<Comment> commentList = service.queryCommentByProductid(i);
           ProductSpecs productSpecs = specService.queryProductSpecById(i);
           for(int j=0; j<commentList.size(); j++){
               commentList.get(j).setProductSpecs(productSpecs);
           }
           comments.addAll(commentList);
       }
       String jsonString = JSON.toJSONString(comments);
       response.setCharacterEncoding("UTF-8");
       response.setContentType("text/html");
       PrintWriter out = response.getWriter();
       out.print(jsonString);
   }
}
