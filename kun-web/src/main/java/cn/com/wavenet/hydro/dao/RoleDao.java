package cn.com.wavenet.hydro.dao;

import cn.com.wavenet.hydro.pojo.Role;

public interface RoleDao extends SupportDao<Role, String>{

    Role selectByPrimaryKey(String cdRl);
    
}