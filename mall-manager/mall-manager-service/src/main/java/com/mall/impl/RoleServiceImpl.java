package com.mall.impl;

import com.mall.IRoleDao;
import com.mall.IRoleService;
import com.mall.Role;

import java.sql.SQLException;
import java.util.List;

public class RoleServiceImpl implements IRoleService {
    @Override
    public void addRole(Role role) {
        IRoleDao dao = new RoleDaoImpl();
        try {
            dao.insertRole(role);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public void removeRole(String id) {
        IRoleDao dao = new RoleDaoImpl();
        try {
            dao.deleteRoleById(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public void modifyRole(Role role) {
        IRoleDao dao = new RoleDaoImpl();
        try {
            dao.update(role);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Role selectRoleById(String id)throws SQLException {
        //根据用户id查询用户的角色
        IRoleDao dao = new RoleDaoImpl();
        Role role = null;
        role = dao.selectRoleById(id);
        return role;
    }


    @Override
    public List<Role> findAll() {
        IRoleDao dao = new RoleDaoImpl();
        List<Role> roleList = null;
        try {
            roleList = dao.selectRoleAll();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return roleList;

    }
}
