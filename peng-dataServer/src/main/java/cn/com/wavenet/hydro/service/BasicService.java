package cn.com.wavenet.hydro.service;

import java.util.List;
import java.util.Map;

public interface BasicService {
	  public Map<String,Object> find_simple(String tableName,Map<String,Object> param);//查询
	  public void insert(String tableName,Map<String,Object> param);//插入数据   
	  public void update(String tableName,Map<String,Object> param,Map<String,Object> param2);//更新数据  
	  public void delete(Map<String,Object> param);//删除数据  
	  public void procedure(Map<String,Object> param);//调用数据库存储过程
	  public void function(Map<String,Object> param);//调用数据库函数
	  public List find(String tableName, Map<String, Object> param,Map<String, Object> param2);
}
