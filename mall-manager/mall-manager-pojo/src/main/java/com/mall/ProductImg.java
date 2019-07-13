package com.mall;

public class ProductImg {
    private int id;
    private int shpID;
    private String zuo_yong;
    private String sp_url;

    public ProductImg() {
    }

    public ProductImg(int id, int shpID, String zuo_yong, String sp_url) {
        this.id = id;
        this.shpID = shpID;
        this.zuo_yong = zuo_yong;
        this.sp_url = sp_url;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getShpID() {
        return shpID;
    }

    public void setShpID(int shpID) {
        this.shpID = shpID;
    }

    public String getZuo_yong() {
        return zuo_yong;
    }

    public void setZuo_yong(String zuo_yong) {
        this.zuo_yong = zuo_yong;
    }

    public String getSp_url() {
        return sp_url;
    }

    public void setSp_url(String sp_url) {
        this.sp_url = sp_url;
    }

    @Override
    public String toString() {
        return "ProductImg{" +
                "id=" + id +
                ", shpID=" + shpID +
                ", zuo_yong='" + zuo_yong + '\'' +
                ", sp_url='" + sp_url + '\'' +
                '}';
    }
}
