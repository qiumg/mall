package com.mall.servlet;

import com.alibaba.fastjson.JSON;
import com.mall.*;
import com.mall.impl.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/address")
public class AddressServlet extends BaseServlet {
   public void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
       //数据获取
       String name = (String)request.getSession().getAttribute("loginName");
       String receive_name = request.getParameter("receive_name");
       String recrive_phone = request.getParameter("recrive_phone");
       String province = request.getParameter("province");
       int provinceId = Integer.parseInt(province);
       String city = request.getParameter("city");
       int cityId = Integer.parseInt(city);
       String area = request.getParameter("area");
       int areaId = Integer.parseInt(area);
       String addresss = request.getParameter("addresss");
       //数据的处理
       userdao dao = new userdaoimpl();
       int userId = dao.selectUserIdByName(name);
       IProvinceService provinceServiceservice = new ProvinceServiceImpl();
       Province province1 = provinceServiceservice.queryProvinceNameByPid(provinceId);
       String provinceName = province1.getProvince();
       ICityService cityService = new CityServiceImpl();
       City city1 = cityService.queryCityByCid(cityId);
       String cityName = city1.getCity();
       IAreaService areaService = new AreaServiceImpl();
       Area area1 = areaService.queryAreaByAid(areaId);
       String areaName = area1.getArea();
       //向收货地址表中添加数据
       Shipping shipping =new Shipping();
       shipping.setUser_Id(userId);
       shipping.setReceiver_name(receive_name);
       shipping.setReceiver_mobile(recrive_phone);
       shipping.setReceiver_province(provinceName);
       shipping.setReceiver_city(cityName);
       shipping.setReceiver_district(areaName);
       shipping.setReceiver_address(addresss);
       IShippingService service = new ShippingServiceImpl();
       service.addShipping(shipping);
   }
    public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String stringId = request.getParameter("id");
        int id = Integer.parseInt(stringId);
        IShippingService service = new ShippingServiceImpl();
        service.deleteShippingById(id);
    }
    public void query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String name = (String)request.getSession().getAttribute("loginName");
        userdao dao = new userdaoimpl();
        int userId = dao.selectUserIdByName(name);
        IShippingService service = new ShippingServiceImpl();
        List<Shipping> shippings = service.queryShippingByUserId(userId);
        String jsonString = JSON.toJSONString(shippings);
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.print(jsonString);
    }
}
