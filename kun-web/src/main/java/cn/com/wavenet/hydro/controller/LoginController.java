package cn.com.wavenet.hydro.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



/**
 * 
* @ClassName: LoginController 
* @Description: TODO(登录Controller) 
* @author shil
* @date 2017年4月24日 下午5:53:49 
*
 */
@Controller
@RequestMapping("login")
public class LoginController extends BaseController{
	
	static Logger logger = Logger.getLogger(LoginController.class);

	@RequestMapping("/403")
	public ModelAndView  accessError(){
		ModelAndView  mav = new ModelAndView();
		mav.setViewName("security/login/403");
		return mav;
	}
	
	@RequestMapping("")
	public ModelAndView  login(){
		ModelAndView  mav = new ModelAndView();
		mav.setViewName("security/login/login");
		return mav;
	}
	
}
