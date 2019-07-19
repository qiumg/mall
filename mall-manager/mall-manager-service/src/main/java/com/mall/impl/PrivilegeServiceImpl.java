package com.mall.impl;

import com.mall.IPrivilegeDao;
import com.mall.IPrivilegeService;
import com.mall.Privilege;

import java.sql.SQLException;
import java.util.List;

public class PrivilegeServiceImpl implements IPrivilegeService {

    @Override
    public void addPrivilege(Privilege privilege) {
        IPrivilegeDao dao = new PrivilegeDaoImpl();
        try {
            dao.insertPrivilege(privilege);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void removePrivilege(int id) {
        IPrivilegeDao dao = new PrivilegeDaoImpl();
        try {
            dao.deletePrivilegeById(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void modifyPrivilege(Privilege privilege) {
        IPrivilegeDao dao = new PrivilegeDaoImpl();
        try {
            dao.update(privilege);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Privilege selectPrivilegeById(int id) throws SQLException {
        IPrivilegeDao dao = new PrivilegeDaoImpl();
        Privilege privilege = dao.selectPrivilegeById(id);
        return privilege;
    }

    @Override
    public List<Privilege> findAll() {
        IPrivilegeDao dao = new PrivilegeDaoImpl();
        List<Privilege> privilegeList = null;
        try {
            privilegeList = dao.selectPrivilegeAll();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return privilegeList;
    }
}
