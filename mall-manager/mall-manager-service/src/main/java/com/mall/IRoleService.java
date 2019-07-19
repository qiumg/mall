package com.mall;


import java.sql.SQLException;
import java.util.List;

public interface IRoleService {
    //新增角色
    public void addRole(Role role);
    //删除角色
    public void removeRole(String id);
    //修改角色
    public void modifyRole(Role role);
    //查询单个角色
    public Role selectRoleById(String id)throws SQLException;
    //查询所有角色
    public List<Role> findAll();
}
