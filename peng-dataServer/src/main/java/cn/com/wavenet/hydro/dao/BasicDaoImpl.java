package cn.com.wavenet.hydro.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;
import cn.com.wavenet.hydro.databaseOpt.mapper.base.BasicMapper;

@Repository
public class BasicDaoImpl extends SqlSessionDaoSupport implements BasicDao {
	  
	@Resource(name="basicMapper")
	private  BasicMapper basicMapper;
	@Override
	public Map<String, Object> find_simple(String tableName ,Map<String, Object> params) {
		  basicMapper = super.getSqlSession().getMapper(BasicMapper.class);
		  String[] keys = new String[params.size()];
	  	  Set<String> sset = params.keySet();
	  	  int i = 0;
	  	  for(String os : sset){
	  		  keys[i++] = os;
	  	  }
	   	  Map<String, Object> map=new HashMap<String, Object>();
	   	  map.put("tablename" , tableName);
	  	  map.put("keys" , keys);
	  	  map.put("params" , params);
	  	  
	  	  Map<String,Object> result = new HashMap<String,Object>();
	  	  result = basicMapper.select(map);
	  	  return result;
	}

	@Override
	public List find(String tableName ,Map<String, Object> params,Map<String, Object> params2) {
		  basicMapper = super.getSqlSession().getMapper(BasicMapper.class);
		  String[] keys = new String[params.size()];
	  	  Set<String> sset = params.keySet();
	  	  int i = 0;
	  	  for(String os : sset){
	  		  keys[i++] = os;
	  	  }
	   	  Map<String, Object> map=new HashMap<String, Object>();
	   	  map.put("tablename" , tableName);
	  	  map.put("keys" , keys);
	  	  map.put("params" , params);
	  	  map.putAll(params2);
	  	  
	  	  List result = new ArrayList<Object>();
	  	  result = basicMapper.find(map);
	  	  return result;
	}

	@Override
	public void insert(String tableName,Map<String, Object> params) {
		  basicMapper = super.getSqlSession().getMapper(BasicMapper.class);
		  String[] keys = new String[params.size()];
		  Set<String> sset = params.keySet();
    	  int i = 0;
    	  for(String os : sset){
    		  keys[i++] = os;
    	  }
     	  Map<String, Object> map=new HashMap<String, Object>();
    	  map.put("tablename" , tableName);
    	  map.put("keys" , keys);
    	  map.put("params" , params); 
		  basicMapper.insert(map);
	}

	@Override
	public void update(String tableName,Map<String, Object> params,Map<String, Object> params2) {
		basicMapper = super.getSqlSession().getMapper(BasicMapper.class);
		Map<String, Object> map=new HashMap<String, Object>();
   		String[] keys = new String[params.size()];
           Set<String> sset = params.keySet();
           int i = 0;
           for (String os : sset) {
               keys[i++] = os;
           }
           String[] keys2 = new String[params2.size()];
           Set<String> sset2 = params2.keySet();
           i = 0;
           for (String os : sset2) {
               keys2[i++] = os;
           }
           map.put("tablename", tableName);
           map.put("keys", keys);
           map.put("params", params);
           map.put("keys2", keys2);
           map.put("params2", params2);
   		   basicMapper.update(map);	
   		   }

	@Override
	public void delete(Map<String, Object> param) {
		// TODO Auto-generated method stub

	}

	@Override
	public void procedure(Map<String, Object> param) {
		// TODO Auto-generated method stub
		  basicMapper = super.getSqlSession().getMapper(BasicMapper.class);
          
	}

	@Override
	public void function(Map<String, Object> param) {
		  basicMapper = super.getSqlSession().getMapper(BasicMapper.class);
          basicMapper.F_GETLCZ(param);
	}

}
