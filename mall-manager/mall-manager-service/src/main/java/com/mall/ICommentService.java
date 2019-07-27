package com.mall;

import java.util.List;

public interface ICommentService {
    //根据商品id查询商品的评论
    List<Comment> queryCommentByProductid(int id);
    //插入一条评论
    void addComment(Comment comment);
}
