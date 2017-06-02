package cn.com.wavenet.hydro.dao;

import java.util.List;

import cn.com.wavenet.hydro.pojo.RoleResource;

public interface RoleResourceDao {

    int deleteByPrimaryKey(String cdRlres);

    int insert(RoleResource record);

    int insertSelective(RoleResource record);
    
    RoleResource selectByPrimaryKey(String cdRlres);
    
    int updateByPrimaryKeySelective(RoleResource record);

    int updateByPrimaryKey(RoleResource record);
    
    List<RoleResource> findUserHasResourceAndRole(String stLgnm);
}