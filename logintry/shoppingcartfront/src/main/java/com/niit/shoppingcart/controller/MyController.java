package com.niit.shoppingcart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcartback.*;

@Controller
public class MyController {
	
	
	
	@RequestMapping("/")
	public ModelAndView myfun1()
	{
	  ModelAndView mv=new ModelAndView("/home");
	  return mv;
		
	}
	
	
	@RequestMapping("/register")
	public ModelAndView myfuns()
	{
		
		ModelAndView mv = new ModelAndView("/register");
		return mv;
		
	}
	
	@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView("/home");
		mv.addObject("isUserClickedLoginHere", "true");
		return mv;
	}
	
}

