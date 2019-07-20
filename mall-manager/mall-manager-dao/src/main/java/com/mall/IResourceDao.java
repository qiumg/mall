package com.mall;




import java.sql.SQLException;
import java.util.List;


public interface IResourceDao {
    //添加数据
    public void insertResource(Resource resource) throws SQLException;
    //删除数据
    public  void  deleteResourceById(int id) throws SQLException;
    //修改数据
    public  void  update(Resource resource)throws SQLException;
    //查询Resource 根据ID
    public Resource selectResourceById(int id)throws SQLException;
    //查询所以的Resource信息
    public List<Resource>selectAll()throws SQLException;
}
