package com.mall.impl;

import com.mall.IResourceDao;
import com.mall.IResourceService;
import com.mall.Resource;

import java.sql.SQLException;
import java.util.List;

public class ResourceServiceImpl implements IResourceService {
    @Override
    public void addResource(Resource resource) {
        IResourceDao dao =new ResourceDaoImpl();
        try {
            dao.insertResource(resource);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void removeResource(int id) {
        IResourceDao dao = new ResourceDaoImpl();
        try {
            dao.deleteResourceById(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void modifyResource(Resource resource) {
        IResourceDao dao = new ResourceDaoImpl();
        try {
            dao.update(resource);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public Resource selectResourceById(int id) throws SQLException {
        IResourceDao dao = new ResourceDaoImpl();
        Resource resource = null;
        resource = dao.selectResourceById(id);
        return resource;
    }

    @Override
    public List<Resource> findAll() {
        IResourceDao dao = new ResourceDaoImpl();
        List<Resource>resourceList = null;
        try {
            resourceList = dao.selectAll();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return resourceList;
    }
}
