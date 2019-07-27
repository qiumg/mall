package com.mall;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

public class Comment {
    private int id;
    private int userId;
    private int productId;
    private String content;
    private Timestamp time;
    private ProductSpecs productSpecs;
    public Comment() {
    }

    public Comment(int userId, int productId, String content, Timestamp time) {
        this.userId = userId;
        this.productId = productId;
        this.content = content;
        this.time = time;
    }

    public Comment(int id, int userId, int productId, String content, Timestamp time) {
        this.id = id;
        this.userId = userId;
        this.productId = productId;
        this.content = content;
        this.time = time;
    }

    public ProductSpecs getProductSpecs() {
        return productSpecs;
    }

    public void setProductSpecs(ProductSpecs productSpecs) {
        this.productSpecs = productSpecs;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "id=" + id +
                ", userId=" + userId +
                ", productId=" + productId +
                ", content='" + content + '\'' +
                ", time=" + time +
                ", productSpecs=" + productSpecs +
                '}';
    }
}
