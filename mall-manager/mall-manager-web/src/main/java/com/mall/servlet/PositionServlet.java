package com.mall.servlet;

import com.alibaba.fastjson.JSON;
import com.mall.*;
import com.mall.impl.AreaServiceImpl;
import com.mall.impl.CityServiceImpl;
import com.mall.impl.ProvinceServiceImpl;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/change.do")
public class PositionServlet extends BaseServlet {
    public void selectProvinces(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        IProvinceService service = new ProvinceServiceImpl();
        List<Province> provinces = service.queryAllProvince();
        String jsonString = JSON.toJSONString(provinces);
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.print(jsonString);
    }
    public void selectCities(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String provinceid = req.getParameter("provinceid");
        int id = Integer.parseInt(provinceid);
        ICityService service = new CityServiceImpl();
        List<City> cities = service.queryCityByProvinceId(id);
        String jsonString = JSON.toJSONString(cities);
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.print(jsonString);
    }
    public void selectAreas(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String cityid = req.getParameter("cityid");
        int id = Integer.parseInt(cityid);
        IAreaService service = new AreaServiceImpl();
        List<Area> areas = service.queryAreaByCityId(id);
        String jsonString = JSON.toJSONString(areas);
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.print(jsonString);
    }
}
