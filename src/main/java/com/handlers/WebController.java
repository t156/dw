package com.handlers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WebController {
	@RequestMapping("login.do")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("message","测试springmvc");
		mv.setViewName("/WEB-INF/page/welcome.jsp");
		return mv;
	}
	@RequestMapping("adddiaowen.do")
	public ModelAndView adddiaowen() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("message","测试springmvc");
		mv.setViewName("/WEB-INF/page/adddiaowen.jsp");
		return mv;
	}
	@RequestMapping("adduser.do")
	public ModelAndView adduser() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("message","测试springmvc");
		mv.setViewName("/WEB-INF/page/adduser.jsp");
		return mv;
	}
	
	@RequestMapping("password.do")
	public ModelAndView password() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("message","测试springmvc");
		mv.setViewName("/WEB-INF/page/password.jsp");
		return mv;
	}
	@RequestMapping("sezi.do")
	public ModelAndView sezi() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("message","测试springmvc");
		mv.setViewName("/WEB-INF/page/sezi.jsp");
		return mv;
	}
	@RequestMapping("updatepassword.do")
	public ModelAndView updatepassword() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("message","测试springmvc");
		mv.setViewName("/WEB-INF/page/updatepassword.jsp");
		return mv;
	}
	@RequestMapping("user.do")
	public ModelAndView user() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("message","测试springmvc");
		mv.setViewName("/WEB-INF/page/user.jsp");
		return mv;
	}
	@RequestMapping("validate.do")
	public ModelAndView validate() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("message","测试springmvc");
		mv.setViewName("/WEB-INF/page/common/validate.jsp");
		return mv;
	}
	@RequestMapping("common.do")
	public ModelAndView common() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("message","测试springmvc");
		mv.setViewName("/WEB-INF/page/common/common.jsp");
		return mv;
	}
	@RequestMapping("head.do")
	public ModelAndView head() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("message","测试springmvc");
		mv.setViewName("/WEB-INF/page/common/head.jsp");
		return mv;
	}
}
