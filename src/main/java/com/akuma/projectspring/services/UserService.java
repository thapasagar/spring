package com.akuma.projectspring.services;

import com.akuma.projectspring.models.Users;

/**
 * 
 * @author Boot Camp User 06
 *
 */
public interface UserService {
	
	public boolean isValid(Users user);
	
	public Users getUserByEmail(Users user);
}
