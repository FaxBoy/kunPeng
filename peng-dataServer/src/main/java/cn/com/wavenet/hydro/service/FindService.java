package cn.com.wavenet.hydro.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import cn.com.wavenet.hydro.service.BasicServiceImpl;

public class FindService{
	public String find(String jsonString){
	ApplicationContext context = new ClassPathXmlApplicationContext("classpath:Application.xml");
	BasicService basicService = (BasicServiceImpl) context.getBean("basicServiceImpl");
	
	JSONObject jsonObject = JSONObject.parseObject(jsonString);
   	Map<String,Object> map = new HashMap<String,Object>(); 
   	Map<String,Object> map2 = new HashMap<String,Object>(); 

   	List mapResult = new ArrayList<Object>(); 
   	JSONObject jsonObjectCondition = (JSONObject) jsonObject.get("condition");
    map = (Map)JSON.parse(jsonObjectCondition.toJSONString());
    String msg ="";
    try{
    String extendFiled = jsonObject.getString("extendFiled");
    String columns ="";
    if(!extendFiled.equals("")){
   	map2.put("columns", jsonObject.getString("columns")+","+extendFiled);
    }else{
    	map2.put("columns", jsonObject.getString("columns"));
    }
   	map2.put("columnOrder", jsonObject.getString("columnOrder"));

   	mapResult = basicService.find(jsonObject.getString("tableName"), map,map2);
   	
   	JSONObject jsonObjectResult = new JSONObject();
    }catch(NullPointerException npe){
		 msg = "数据异常或者网络错误";
	}
   	return mapResult.toString();
	}
}
