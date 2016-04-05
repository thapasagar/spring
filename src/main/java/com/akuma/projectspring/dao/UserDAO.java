package com.akuma.projectspring.dao;

import java.util.List;

import com.akuma.projectspring.models.Users;

public interface UserDAO {
	
	public List<Users>  getAllUsers();
	public Users findUserByEmail(String email);
	public void createUser(Users user);
	
}
