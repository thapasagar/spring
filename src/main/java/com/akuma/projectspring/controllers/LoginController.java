package com.akuma.projectspring.controllers;

import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.akuma.projectspring.models.Users;
import com.akuma.projectspring.services.UserService;

@Controller
public class LoginController {
	private Logger logger = Logger.getLogger(LoginController.class);
	private Users retrievedUser;

	@Autowired
	private UserService userService;

	/**
	 * When the login page is requested the new instance of User is sent
	 */
	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
	public String getLoginPage(Model model) {
		model.addAttribute("loginform", new Users());
		return "login";
	}

	@RequestMapping(value = { "/login" }, method = RequestMethod.POST)
	public String validateUser(@Valid @ModelAttribute("user") Users user, Model model) {
		logger.info("Validating User email " + user.getEmail());
		logger.info("Validating User Password " + user.getPassword());
		boolean isValid = false;

		isValid = userService.isValid(user);

		if (isValid) {
			retrievedUser = userService.getUserByEmail(user);
			model.addAttribute("name", retrievedUser.getFirstName() + " " + retrievedUser.getLastName());
			model.addAttribute("email", retrievedUser.getEmail());
			model.addAttribute("", retrievedUser.getRole());
			return "welcome";
		} else {
			return "home";
		}

	}
}
