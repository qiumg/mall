package com.mall.servlet;

import com.mall.*;
import com.mall.impl.CarDaoImpl;

import com.mall.impl.ProductDAOImpl;
import com.mall.impl.ProductSpecDAOImpl;
import com.mall.impl.ProductSpecServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/pay.do")
public class PayServlet extends BaseServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method = request.getParameter("_method");
        switch (method){
            case "save":
                save(request,response);
                break;
            case "jump":
                jump(request,response);
                break;
            case"addInfo":
                addInfo(request,response);
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    public void save (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        ICarDao carDao = new CarDaoImpl();

        String productId = request.getParameter("productId");
        String[] idArr = productId.split(",");

        String productNum = request.getParameter("productNum");
        String[] numArr = productNum.split(",");
       for(int i =0 ;i<idArr.length;i++){
           int id = Integer.parseInt(idArr[i]);
           int quantity = Integer.parseInt(numArr[i]);
           carDao.updateCar(quantity,id);
       }

        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.print(productId);

    }
    public void jump (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        ICarDao carDao = new CarDaoImpl();
        List<Car> cars = new ArrayList<>();
        String productId = request.getParameter("id");
        String[] idArr = productId.split(",");
        for(int i = 0 ; i < idArr.length ; i++){
            int id = Integer.parseInt(idArr[i]);
            Car car=carDao.selectById(id);
            cars.add(car);
        }
        request.setAttribute("cars",cars);
        request.getRequestDispatcher("/home/pay.jsp").forward(request,response);
    }
    public void addInfo(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        ICarDao carDao = new CarDaoImpl();
        IProductDAO productDAO = new ProductDAOImpl();

        String productid = request.getParameter("productid");
        int pid = Integer.parseInt(productid);
        String color = request.getParameter("color");
        String size = request.getParameter("size");
        String productnum = request.getParameter("productnum");
        int productNum = Integer.parseInt(productnum);
        String spec = "{\"color\":\""+color+"\",\"size\":\""+size+"\"}";
        IProductSpecService service = new ProductSpecServiceImpl();
        ProductSpecs productSpecs = service.queryByPidAndSpecs(pid, spec);

        Product product = productDAO.selectProductById(pid);
        String user_name = (String) request.getSession().getAttribute("loginName");
        carDao.addToCar(productSpecs.getId(),user_name,product.getName(),product.getMain_Image(),productNum,productSpecs.getProduct_Specs(),productSpecs.getProduct_Price());
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.print(productSpecs.getId());
    }
}
