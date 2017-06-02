package cn.com.wavenet.hydro.service;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import cn.com.wavenet.hydro.dao.BasicDaoImpl;

@Service
public class BasicServiceImpl implements BasicService {
	
    @Resource(name="basicDaoImpl")
    private BasicDaoImpl basicDaoImpl;
	@Override
	public Map<String, Object> find_simple(String tableName, Map<String, Object> param) {
		// TODO Auto-generated method stub
		return basicDaoImpl.find_simple(tableName, param);
	}
	@Override
	public List find(String tableName, Map<String, Object> param,Map<String, Object> param2) {
		// TODO Auto-generated method stub
		return basicDaoImpl.find(tableName, param,param2);
	}
	
	@Override
	public void insert(String tableName, Map<String, Object> param) {
		// TODO Auto-generated method stub
       basicDaoImpl.insert(tableName, param);
	}

	@Override
	public void update(String tableName, Map<String, Object> param, Map<String, Object> param2) {
		// TODO Auto-generated method stub
       basicDaoImpl.update(tableName, param, param2);
	}

	@Override
	public void delete(Map<String, Object> param) {
		// TODO Auto-generated method stub

	}

	@Override
	public void procedure(Map<String, Object> param) {
		// TODO Auto-generated method stub

	}

	@Override
	public void function(Map<String, Object> param) {
       basicDaoImpl.function(param);
	}

}
