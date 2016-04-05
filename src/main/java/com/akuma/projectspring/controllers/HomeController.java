package com.akuma.projectspring.controllers;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	private Logger logger = Logger.getLogger(HomeController.class);

	@RequestMapping("/home")
	public String getHome(){
		return "home";
	}
	
	@RequestMapping(value = {"/", "/index"})
	public String getIndex(){
		return "index";
	}
}
