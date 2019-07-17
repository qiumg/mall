package com.mall;

public class Area {
    private int id;
    private int areaId;
    private String area;
    private int cityId;

    public Area() {
    }

    public Area(int id, int areaId, String area, int cityId) {
        this.id = id;
        this.areaId = areaId;
        this.area = area;
        this.cityId = cityId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAreaId() {
        return areaId;
    }

    public void setAreaId(int areaId) {
        this.areaId = areaId;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public int getCityId() {
        return cityId;
    }

    public void setCityId(int cityId) {
        this.cityId = cityId;
    }

    @Override
    public String toString() {
        return "Area{" +
                "id=" + id +
                ", areaId=" + areaId +
                ", area='" + area + '\'' +
                ", cityId=" + cityId +
                '}';
    }
}
