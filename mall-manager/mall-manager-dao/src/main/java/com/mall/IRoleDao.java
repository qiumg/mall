package com.mall;


import java.sql.SQLException;
import java.util.List;

public interface IRoleDao {
    public void insertRole(Role role)throws SQLException;

    public void deleteRoleById(String id)throws SQLException;

    public void update(Role role) throws SQLException;

    public Role selectRoleById(String id)throws SQLException;

    public List<Role> selectRoleAll() throws SQLException;


}

