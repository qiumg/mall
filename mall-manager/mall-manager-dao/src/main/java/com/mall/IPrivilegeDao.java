package com.mall;


import java.sql.SQLException;
import java.util.List;

public interface IPrivilegeDao {
    public void insertPrivilege(Privilege privilege)throws SQLException;

    public void deletePrivilegeById(int id)throws SQLException;

    public void update(Privilege privilege) throws SQLException;

    public Privilege selectPrivilegeById(int id)throws SQLException;

    public List<Privilege> selectPrivilegeAll() throws SQLException;


}

