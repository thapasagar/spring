package com.akuma.projectspring.configurations;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.akuma.projectspring.models.Users;

/**
 * It indicates to the Spring IOC container that this class
 * will hold bean definitions
 */
//@Configuration
public class ApplicationConfig {
	
	/**
	 * @BEAN is method level annotation equivalent to the bean tag (xml)
	 * It tells IOC container that we are declaring new bean
	 * - We use method name or name attribute as bean name
	 * - We use new operator and constructor to instantiate the bean
	 */
	/*@Bean(name = {"user", "userInfo"})
	public Users user(){
		return new Users();
	}*/
}
