package com.mall;

public class ProductSpecs {
    private int id;
    private int productId;
    private String productSpecs;
    private int specsSeq;
    private int productStock;
    private double productPrice;
    private String createTime;
    private String updateTime;

    public ProductSpecs() {
    }

    public ProductSpecs(int id, int productId, String productSpecs, int specsSeq, int productStock, double productPrice, String createTime, String updateTime) {
        this.id = id;
        this.productId = productId;
        this.productSpecs = productSpecs;
        this.specsSeq = specsSeq;
        this.productStock = productStock;
        this.productPrice = productPrice;
        this.createTime = createTime;
        this.updateTime = updateTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductSpecs() {
        return productSpecs;
    }

    public void setProductSpecs(String productSpecs) {
        this.productSpecs = productSpecs;
    }

    public int getSpecsSeq() {
        return specsSeq;
    }

    public void setSpecsSeq(int specsSeq) {
        this.specsSeq = specsSeq;
    }

    public int getProductStock() {
        return productStock;
    }

    public void setProductStock(int productStock) {
        this.productStock = productStock;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }

    @Override
    public String toString() {
        return "ProductSpecs{" +
                "id=" + id +
                ", productId=" + productId +
                ", productSpecs='" + productSpecs + '\'' +
                ", specsSeq=" + specsSeq +
                ", productStock=" + productStock +
                ", productPrice=" + productPrice +
                ", createTime='" + createTime + '\'' +
                ", updateTime='" + updateTime + '\'' +
                '}';
    }
}
