package cn.com.wavenet.hydro.dao;

import java.util.List;

import cn.com.wavenet.hydro.pojo.Users;

public interface UsersDao extends SupportDao<Users, String>{

    Users selectByPrimaryKey(String cdUs);
    
    List<Users> selectUserAll();
    
    Users findByStLgnm(String stLgnm);
    
    Integer insertSelective(Users users);
    
    Integer updateByPrimaryKey(Users users);
    
    Integer updateByUsercdUs(Users users);
    
    Integer updateByPrimaryKeySelective(Users users);
}