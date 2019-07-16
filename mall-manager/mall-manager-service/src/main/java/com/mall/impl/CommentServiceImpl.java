package com.mall.impl;

import com.mall.Comment;
import com.mall.ICommentDAO;
import com.mall.ICommentService;

import java.util.List;

public class CommentServiceImpl implements ICommentService {
    @Override
    public List<Comment> queryCommentByProductid(int id) {
        ICommentDAO dao = new CommentDAOImpl();
        List<Comment> comments = dao.selectCommentByProductId(id);
        return comments;
    }
}
