package com.mall;

import java.util.List;

public interface ICommentDAO {
    //根据商品id查询评论
    List<Comment> selectCommentByProductId(int id);
    //插入一条评论
    void insertComment(Comment comment);
}
