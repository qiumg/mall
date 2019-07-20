package com.mall;

import java.sql.SQLException;
import java.util.List;

public interface IResourceService {
    //新增角色
    public void addResource(Resource resource);
    //删除角色
    public void removeResource(int id);
    //修改角色
    public void modifyResource(Resource resource);
    //查询单个角色
    public Resource selectResourceById(int id)throws SQLException;
    //查询所有角色
    public List<Resource> findAll();
}
