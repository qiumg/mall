package com.mall;

public class Product {
    private int id;
    private  String shp_mch;
    private String  shp_tp;
    private String flbh;
    private int ppid;
    private String chjshj;
    private String shp_msh;

    public Product() {
    }

    public Product(int id, String shp_mch, String shp_tp, String flbh, int ppid, String chjshj, String shp_msh) {
        this.id = id;
        this.shp_mch = shp_mch;
        this.shp_tp = shp_tp;
        this.flbh = flbh;
        this.ppid = ppid;
        this.chjshj = chjshj;
        this.shp_msh = shp_msh;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getShp_mch() {
        return shp_mch;
    }

    public void setShp_mch(String shp_mch) {
        this.shp_mch = shp_mch;
    }

    public String getShp_tp() {
        return shp_tp;
    }

    public void setShp_tp(String shp_tp) {
        this.shp_tp = shp_tp;
    }

    public String getFlbh() {
        return flbh;
    }

    public void setFlbh(String flbh) {
        this.flbh = flbh;
    }

    public int getPpid() {
        return ppid;
    }

    public void setPpid(int ppid) {
        this.ppid = ppid;
    }

    public String getChjshj() {
        return chjshj;
    }

    public void setChjshj(String chjshj) {
        this.chjshj = chjshj;
    }

    public String getShp_msh() {
        return shp_msh;
    }

    public void setShp_msh(String shp_msh) {
        this.shp_msh = shp_msh;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", shp_mch='" + shp_mch + '\'' +
                ", shp_tp='" + shp_tp + '\'' +
                ", flbh='" + flbh + '\'' +
                ", ppid=" + ppid +
                ", chjshj='" + chjshj + '\'' +
                ", shp_msh='" + shp_msh + '\'' +
                '}';
    }
}
