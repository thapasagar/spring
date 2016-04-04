package com.akuma.projectspring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	@RequestMapping("/home")
	public String getHome(){
		return "home";
	}
	
	@RequestMapping(value = {"/login"}, method=RequestMethod.GET)
	public String getLoginPage(){
		return "login";
	}
	
	@RequestMapping(value = {"/login"}, method=RequestMethod.POST)
	public String getLogin(){
		
		return "welcome";
	}
	
	@RequestMapping(value = {"/", "/index"})
	public String getIndex(){
		return "index";
	}
}
