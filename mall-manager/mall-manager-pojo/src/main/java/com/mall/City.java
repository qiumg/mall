package com.mall;

public class City {
    private int id;
    private String cityId;
    private String city;
    private  int provinceid;

    public City() {
    }

    public City(int id, String cityId, String city, int provinceid) {
        this.id = id;
        this.cityId = cityId;
        this.city = city;
        this.provinceid = provinceid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCityId() {
        return cityId;
    }

    public void setCityId(String cityId) {
        this.cityId = cityId;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public int getProvinceid() {
        return provinceid;
    }

    public void setProvinceid(int provinceid) {
        this.provinceid = provinceid;
    }

    @Override
    public String toString() {
        return "City{" +
                "id=" + id +
                ", cityId='" + cityId + '\'' +
                ", city='" + city + '\'' +
                ", provinceid=" + provinceid +
                '}';
    }
}
