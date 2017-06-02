package cn.com.wavenet.hydro.controller;

import javax.annotation.Resource;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.com.wavenet.security.filter.WavenetUser;
import cn.com.wavenet.security.service.WavenetUserService;

@Controller
@RequestMapping("")
public class MainController {

	@Resource
	WavenetUserService wavenetUserService;
	
	@RequestMapping("/home")
	public ModelAndView  forwordMainPageView(){
		ModelAndView mav = new ModelAndView();
		WavenetUser wu = (WavenetUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		mav.addObject("userInfo", wu.getUsers());
		mav.setViewName("hydro/home/index");
		return mav;
	}
	
	
	@RequestMapping("/stationInfo/dtm")
	public ModelAndView  stationInfo(){
		ModelAndView mav = new ModelAndView();
		WavenetUser wu = (WavenetUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		mav.addObject("userInfo", wu.getUsers());
		mav.setViewName("hydro/home/index");
		return mav;
	}
	
	@RequestMapping("/common/demo")
	public ModelAndView  demo(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("common/demo");
		return mav;
	}
	
	@RequestMapping("")
	public ModelAndView  login(){
		ModelAndView  mav = new ModelAndView();
		mav.setViewName("security/login/login");
		return mav;
	}
}
