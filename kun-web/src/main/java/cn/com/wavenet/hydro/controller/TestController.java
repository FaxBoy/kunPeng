package cn.com.wavenet.hydro.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import cn.com.wavenet.hydro.pojo.Users;
import cn.com.wavenet.hydro.service.RedisTestService;
import cn.com.wavenet.hydro.util.UUIDUtil;
import cn.com.wavenet.hydro.util.mybatis.paginator.domain.PageList;
import cn.com.wavenet.security.service.WavenetUserService;



@Controller
@RequestMapping("/t")
public class TestController {
	
	@Resource  
    private RedisTestService redisTestService;
	
	@Resource  
    WavenetUserService wavenetUserService;
	
	@RequestMapping(value = "/getTime",method=RequestMethod.GET)  
	@ResponseBody
	public JSONObject getTime(){
		JSONObject json = new JSONObject();
		json.put("time", redisTestService.getTimestamp("foo"));
		return json;
	}
	
	@RequestMapping(value = "/user",method=RequestMethod.GET)
	public ModelAndView list(){
		ModelAndView mav = new ModelAndView();
		/*WavenetUser wu = (WavenetUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		mav.addObject("userInfo", wu.getUsers());*/
		mav.setViewName("security/user/main");
		return mav;
	}
	
	@RequestMapping(value = "/selectUserAll",method=RequestMethod.GET)  
	@ResponseBody
	public JSONObject selectUserAll(){
//		JSONObject json = new JSONObject();
//		json.put("time",wavenetUserServiceImpl.srlectUserAll());
		
		JSONObject json = new JSONObject();
		Map<Object, Object> params = new HashMap<Object, Object>();
		params.put("s", "s");
		List<?> list=this.wavenetUserService.selectPage(params, 1, 10);
		PageList pagelist=(PageList)list;
		json.put("pageNumber", pagelist.getPaginator().getTotalCount());
		json.put("pageCount", pagelist.getPaginator().getTotalPages());
		json.put("curPage", pagelist.getPaginator().getPage());
		json.put("result", new JSONArray(pagelist));
		System.out.println(json);
		
		return json;
	}
	
	@RequestMapping(value="/usersAdd",method=RequestMethod.POST)
	@ResponseBody
	public Integer saveEmps(Users users){//从前端传来的参数springmvc会自动封装
		String cdUs = UUIDUtil.getUUID(32);
		users.setCdUs(cdUs);
		String ps = users.getStLgps();
		
		Md5PasswordEncoder md5 = new Md5PasswordEncoder();
		String md5salf = md5.encodePassword(users.getStLgps(),users.getStLgnm());
		
		//String password = UUIDUtil.toMD5(ps);
		users.setStLgps(md5salf);
		int index = wavenetUserService.insertSelective(users);
		return index;
	}
	
	@RequestMapping(value="/userCk",method=RequestMethod.GET)
	@ResponseBody
	public Users selectByPrimaryKey(String cdUs){//从前端传来的参数springmvc会自动封装
		Users users = new Users();
		users = wavenetUserService.selectByPrimaryKey(cdUs);
		return users;
	}
	
	@RequestMapping(value="/userUp",method=RequestMethod.POST)
	@ResponseBody
	public Integer updateByPrimaryKey(Users users){
		String a = users.getCdUs();
		System.out.println(a);
		users.setStStatus("1");
		Integer index = wavenetUserService.updateByPrimaryKey(users);
		return index;
	}
	
	@RequestMapping(value="/userDel",method=RequestMethod.POST)
	@ResponseBody
	public Integer updateByUsercdUs(Users users){
		String a = users.getCdUs();
		System.out.println(a);
		Integer index = wavenetUserService.updateByUsercdUs(users);
		return index;
	}
	
}
