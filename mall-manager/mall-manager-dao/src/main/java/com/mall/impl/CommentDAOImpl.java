package com.mall.impl;

import com.mall.Comment;
import com.mall.ICommentDAO;
import com.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class CommentDAOImpl implements ICommentDAO {
    @Override
    public List<Comment> selectCommentByProductId(int id) {
        List<Comment> comments = null;
        QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from mmall_comment where productid = ?";
        try {
            comments = qr.query(sql, new BeanListHandler<>(Comment.class), id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return comments;
    }
}
