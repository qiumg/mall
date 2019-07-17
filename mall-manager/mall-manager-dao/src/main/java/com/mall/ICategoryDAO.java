package com.mall;

import java.util.List;

public interface ICategoryDAO {
    //搜索全部商品类别
    List<Category> selectAllCategory();
    //搜索Category根据id；
    Category selectCategoryById(int id);
    //在Category插入一条信息
    void insertCategory(Category category);
    //更新Category中的信息
    void updateCategory(Category category);
    //通过记id删除一条记录
    void deleteCategoryByID(int id);
    //根据类别名搜索类别id
    int selectIdByName(String name);
}
