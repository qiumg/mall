package com.mall.servlet;

import com.mall.Car;
import com.mall.ICarDao;
import com.mall.impl.CarDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/car.do")
public class ShoppingCarServlet extends HttpServlet {
    public static List<Car> cars = new ArrayList<>();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method = request.getParameter("_method");
        switch (method){
            case "selectCar":
                selectCar(request,response);
                break;
            case "addToCar":
                addToCar(request,response);
                break;
            case"deleteCar":
                deleteCar(request,response);
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
    //显示商品列表页
    public void selectCar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ICarDao carDao = new CarDaoImpl();
        List<Car> cars = null;

        cars = carDao.selectCar();

        request.setAttribute("cars",cars);

        request.getRequestDispatcher("/home/shopcart.jsp").forward(request,response);

    }
    public void deleteCar(HttpServletRequest request, HttpServletResponse response){
        String num =request.getParameter("id");
        System.out.println(num);
        int id = Integer.parseInt(num);
        ICarDao carDao = new CarDaoImpl();
        carDao.deleteCar(id);
        try {
            request.getRequestDispatcher("/car.do?_method=selectCar").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    //将商品加入购物车
    public void addToCar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       //获取当前加入购物车的商品信息
        int id = Integer.valueOf(request.getParameter("id"));
        Car cart = cars.get(id -1);

        //获取购物车 键：所购买的商品  值：商品数量
        HttpSession session = request.getSession();
        Map<Car,Integer> carMap = (Map<Car, Integer>) session.getAttribute("car");

        //判断session中是否存在购物车
        if (carMap == null){
            carMap = new HashMap<>();
        }
        //加入购物车之前要判断用户是否购买过次商品
        //若购买过，商品数量+1
        if (carMap.containsKey(cars)){
            carMap.put(cart,carMap.get(cart)+1);
        }else{
            carMap.put(cart,1);
        }



        session.setAttribute("car",carMap);
        session.setAttribute("JSESSIONID",session.getId());
        session.setMaxInactiveInterval(60*60*24*7);
        //跳转到购物车页面
        request.getRequestDispatcher("/shopcart.jsp").forward(request,response);
    }
    //结算

}
