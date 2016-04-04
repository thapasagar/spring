package com.akuma.projectspring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/home")
	public String getHome(){
		return "home";
	}
	
	@RequestMapping(value = {"/", "/index"})
	public String getIndex(){
		return "index";
	}
}
