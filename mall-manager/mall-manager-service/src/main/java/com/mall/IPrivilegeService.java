package com.mall;

import java.sql.SQLException;
import java.util.List;

public interface IPrivilegeService {
    //新增权限
    public void addPrivilege(Privilege privilege);
    //删除权限
    public void removePrivilege(int id);
    //修改权限
    public void modifyPrivilege(Privilege privilege);
    //查询单个权限
    public Privilege selectPrivilegeById(int id)throws SQLException;
    //查询所有权限
    public List<Privilege> findAll();
}
