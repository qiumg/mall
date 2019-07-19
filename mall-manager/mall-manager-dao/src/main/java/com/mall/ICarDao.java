package com.mall;

import java.util.List;

public interface ICarDao {
     List<Car> selectCar(String user_name);
     public void deleteCar(int id);
     public void addToCar(int id,String user_name,String name,String main_image,int quantity,String product_specs,double product_price);
     public void updateCar(int id,int quantity);
     public Car selectById(int id);
}
