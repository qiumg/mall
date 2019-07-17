package com.mall;

public class ProductMode {
    private String catagore_name;  //类别名
    private String name;//名字
    private String price;  //价格
    private String subtitle;//介绍
    private String main_img;//图片名

    public String getCatagore_name() {
        return catagore_name;
    }

    public void setCatagore_name(String catagore_name) {
        this.catagore_name = catagore_name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getSubtitle() {
        return subtitle;
    }

    public void setSubtitle(String subtitle) {
        this.subtitle = subtitle;
    }

    public String getMain_img() {
        return main_img;
    }

    public void setMain_img(String main_img) {
        this.main_img = main_img;
    }

    @Override
    public String toString() {
        return "ProductMode{" +
                "catagore_name='" + catagore_name + '\'' +
                ", name='" + name + '\'' +
                ", price='" + price + '\'' +
                ", subtitle='" + subtitle + '\'' +
                ", main_img='" + main_img + '\'' +
                '}';
    }
}
