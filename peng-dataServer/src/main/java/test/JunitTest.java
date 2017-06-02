package test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.alibaba.fastjson.JSON;

import cn.com.wavenet.hydro.service.BasicService;
import cn.com.wavenet.hydro.service.BasicServiceImpl;
import cn.com.wavenet.hydro.service.FindService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class JunitTest {
    @Test
	public void testInsert(){
		ApplicationContext context = new ClassPathXmlApplicationContext("classpath:Application.xml");
		BasicService basicService = (BasicServiceImpl) context.getBean("basicServiceImpl");
		
    	Map<String,Object> map = new HashMap<String,Object>(); 
    	map.put("USER_ID", 1);
    	map.put("USER_USERNAME", "lt");
    	map.put("USER_PASSWORD", "123");
    	basicService.insert("USER_TEST", map);
     }
    @Test
	public void testSelect(){
		ApplicationContext context = new ClassPathXmlApplicationContext("classpath:Application.xml");
		BasicService basicService = (BasicServiceImpl) context.getBean("basicServiceImpl");
		
    	Map<String,Object> map = new HashMap<String,Object>(); 
    	Map<String,Object> mapResult = new HashMap<String,Object>(); 

    	map.put("USER_USERNAME", "lt1");
//    	map.put("USER_PASSWORD", "456");

    	mapResult = basicService.find_simple("USER_TEST", map);
    	System.out.println(mapResult);
     }
    @Test
   	public void testSelect_test(){
 	   JSONObject js = new JSONObject();
 	   JSONObject js1 = new JSONObject();
 	   JSONObject js2 = new JSONObject();

 	   js.put("columns", "USER_ID");
 	   js.put("extendFiled", "USER_USERNAME");
// 	   js.put("columnOrder", "USER_ID");
 	   js.put("tableName", "USER_TEST");
 	   js2.put("USER_USERNAME", "lt1");
 	   js2.put("USER_PASSWORD", "456");
 	   js.put("condition", js2);
 	   Map map = (Map) JSON.parse(js.toString());
 	   System.out.println(map+"************************");
        FindService f = new FindService();
        String a = f.find(js.toString());
        System.out.println(a);
        }
    @Test
   	public void testService(){
 	   JSONObject js = new JSONObject();
 	   JSONObject js1 = new JSONObject();
 	   JSONObject js2 = new JSONObject();

 	   js.put("columns", "user");
 	   js.put("extendFiled", "");
 	   js.put("columnOrder", "NM_SID");
 	   js.put("tableName", "T_HY_REPORTMAIN_I");
 	   js2.put("NM_STATE", "102203");
 	   js.put("condition", js2);
        FindService f = new FindService();
        String a = f.find(js.toString());
        System.out.println(a);
        }
    @Test
   	public void testUpdate(){
   		ApplicationContext context = new ClassPathXmlApplicationContext("classpath:Application.xml");
   		BasicService basicService = (BasicServiceImpl) context.getBean("basicServiceImpl");
   		
       	Map<String,Object> map = new HashMap<String,Object>();
       	Map<String,Object> map_creatial = new HashMap<String,Object>(); 

       	map.put("USER_PASSWORD", "45");
       	map_creatial.put("USER_USERNAME", "lt");
       	basicService.update("USER_TEST", map,map_creatial);
        }
    @Test
   	public void testFunction(){
   		ApplicationContext context = new ClassPathXmlApplicationContext("classpath:Application.xml");
   		BasicService basicService = (BasicServiceImpl) context.getBean("basicServiceImpl");
   		
       	Map<String,Object> map = new HashMap<String,Object>();
       	map.put("return_obj", "");
		map.put("x","30.565645");
		map.put("y", "31.34113");
       	basicService.function(map);
       	String rs = (String) map.get("return_obj");
       	System.out.println(rs);
        }
}
