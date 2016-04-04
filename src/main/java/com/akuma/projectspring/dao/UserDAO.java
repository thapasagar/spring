package com.akuma.projectspring.dao;

import com.akuma.projectspring.models.User;

public interface UserDAO {
	
	public User findUserByEmail(String email);
	
}
