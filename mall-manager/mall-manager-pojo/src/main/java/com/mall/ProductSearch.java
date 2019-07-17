package com.mall;

public class ProductSearch {
    private String queryString;  //关键字
    private String catagore_name; //类别
    private String price;  //价格
    private String sort;  //排序类型

    public String getQueryString() {
        return queryString;
    }

    public void setQueryString(String queryString) {
        this.queryString = queryString;
    }

    public String getCatagore_name() {
        return catagore_name;
    }

    public void setCatagore_name(String catagore_name) {
        this.catagore_name = catagore_name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    @Override
    public String toString() {
        return "ProductSearch{" +
                "queryString='" + queryString + '\'' +
                ", catagore_name='" + catagore_name + '\'' +
                ", price='" + price + '\'' +
                ", sort='" + sort + '\'' +
                '}';
    }
}
