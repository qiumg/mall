package com.mall;

public class Province {
    private int id;
    private int provinceId;
    private String province;

    public Province() {
    }

    public Province(int id, int provinceId, String province) {
        this.id = id;
        this.provinceId = provinceId;
        this.province = province;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProvinceId() {
        return provinceId;
    }

    public void setProvinceId(int provinceId) {
        this.provinceId = provinceId;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    @Override
    public String toString() {
        return "Province{" +
                "id=" + id +
                ", provinceId=" + provinceId +
                ", province='" + province + '\'' +
                '}';
    }
}
