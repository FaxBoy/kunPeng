package cn.com.wavenet.hydro.dao;

import cn.com.wavenet.hydro.pojo.RoleUser;

public interface RoleUserDao {
    int deleteByPrimaryKey(String cdUsrl);

    int insert(RoleUser record);

    int insertSelective(RoleUser record);


    RoleUser selectByPrimaryKey(String cdUsrl);
    
    int updateByPrimaryKeySelective(RoleUser record);

    int updateByPrimaryKey(RoleUser record);
}