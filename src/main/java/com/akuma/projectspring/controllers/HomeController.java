package com.akuma.projectspring.controllers;

import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.akuma.projectspring.models.User;
import com.akuma.projectspring.services.UserService;

@Controller
public class HomeController {
	private Logger logger = Logger.getLogger(HomeController.class);
	
	//@Autowired
	private UserService userService;
	
	@RequestMapping("/home")
	public String getHome(){
		return "home";
	}
	
	/**
	 * When the login page is requested the new instance of User is sent
	 */
	@RequestMapping(value = {"/login"}, method=RequestMethod.GET)
	public String getLoginPage(Model model){
		model.addAttribute("loginform", new User());
		return "login";
	}
	
	@RequestMapping(value = {"/login"}, method=RequestMethod.POST)
	public String validateUser(@Valid @ModelAttribute("user") User user){
		logger.info("Validating User " + user.getEmail());
		boolean isValid = false;
		
		//if()
		
		return "welcome";
	}
	
	@RequestMapping(value = {"/", "/index"})
	public String getIndex(){
		return "index";
	}
}
