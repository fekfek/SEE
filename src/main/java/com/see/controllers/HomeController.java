package com.see.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping(value = {"/","/home"}, method = RequestMethod.GET)
	public String hello() {
		return "home";
	}
	@RequestMapping("/admin")		//controller not in use for now
	public ModelAndView admin() {
		ModelAndView mv=new ModelAndView();
		mv.addObject("message","This page is for Admins but can be accessed by Managers");
		return mv;
	}
	@RequestMapping("/manager")		//controller not in use for now
	public ModelAndView manager(ModelAndView mv) {
//		ModelAndView mv=new ModelAndView();
		mv.addObject("message","This page is strictly for Managers only.");
		mv.setViewName("manager");
		return mv;
	}
	
	@RequestMapping("/Access_Denied")
	public ModelAndView access() {
		ModelAndView mv=new ModelAndView();
		mv.addObject("message","Sorry, Access is Denied");
		mv.setViewName("accessDenied");
		return mv;
	}


}
