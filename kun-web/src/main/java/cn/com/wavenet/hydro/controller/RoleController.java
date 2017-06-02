package cn.com.wavenet.hydro.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import cn.com.wavenet.hydro.pojo.Role;
import cn.com.wavenet.hydro.util.mybatis.paginator.domain.PageList;
import cn.com.wavenet.hydro.util.mybatis.paginator.domain.Paginator;
import cn.com.wavenet.security.service.WavenetRoleService;

/**
 * 
* @ClassName: RoleController 
* @Description: TODO(组织机构角色管理) 
* @author shil
* @date 2017年5月26日 下午2:01:01 
*
 */
@Controller
@RequestMapping("role")
public class RoleController extends BaseController{

	@Resource
	WavenetRoleService roleService;
	
	@RequestMapping("")
	public ModelAndView  main(){
		ModelAndView  mav = new ModelAndView();
		mav.setViewName("security/role/role");
		return mav;
	}
	
	@RequestMapping(value = "/getSelectPages",method=RequestMethod.POST)  
	@ResponseBody
	public JSONObject selectPages(HttpServletRequest req){
		JSONObject json = new JSONObject();
		Paginator paginator = Paginator.getReqPaginator(req);
		List<?> list = roleService.selectPage(paginator.getParamsMap(), paginator.getPage(),paginator.getLimit());
		PageList pagelist=(PageList)list;
		json.put("total", pagelist.getPaginator().getTotalCount());
		/*json.put("totals", pagelist.getPaginator().getTotalPages());
		json.put("curPage", pagelist.getPaginator().getPage());*/
		json.put("rows", new JSONArray(pagelist));
		System.out.println(json.toString());
		return json;
	}
	
	@RequestMapping(value="/roleAdd",method=RequestMethod.POST)
	@ResponseBody
	public Integer saveRole(Role role){//从前端传来的参数springmvc会自动封装
		System.out.println("roleAdd传值------------"+role.getCdRl());
		int index = roleService.insertSelective(role);
		return index;
	}
	
	@RequestMapping("2")
	public ModelAndView  main2(){
		ModelAndView  mav = new ModelAndView();
		mav.setViewName("security/role/role2");
		return mav;
	}
	
	@RequestMapping(value = "/getSelectPage2",method=RequestMethod.POST)  
	@ResponseBody
	public JSONObject selectPage2(HttpServletRequest req){
		JSONObject json = new JSONObject();
		Paginator paginator = Paginator.getPaginatorParam(getParameterMap());
		List<?> list = roleService.selectPage(paginator.getParamsMap(), paginator.getPage(),paginator.getLimit());
		PageList pagelist=(PageList)list;
		json.put("total", pagelist.getPaginator().getTotalCount());
		json.put("rows", new JSONArray(pagelist));
		System.out.println(json.toString());
		return json;
	}
	
}
