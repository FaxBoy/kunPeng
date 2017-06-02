package cn.com.wavenet.hydro.dao;

import java.util.List;

import cn.com.wavenet.hydro.pojo.Resources;

public interface ResourceDao {

    int deleteByPrimaryKey(String cdRes);

    int insert(Resources record);

    int insertSelective(Resources record);

    //List<Resources> selectByPrimaryKey(String cdRes);
    
    int updateByPrimaryKeySelective(Resources record);

    int updateByPrimaryKey(Resources record);
    
    List<Resources> getUserResourceByLgnm(String stLgnm);
    
    List<Resources> findAllResource();
}