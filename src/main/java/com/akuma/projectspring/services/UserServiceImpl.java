package com.akuma.projectspring.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.akuma.projectspring.dao.UserDAO;
import com.akuma.projectspring.models.Users;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDAO userDAO;
	
	@Override
	public boolean isValid(Users user) {
		Users userInDB = userDAO.findUserByEmail(user.getEmail());
		
		if(userInDB.getPassword() != null && userInDB.getPassword().equals(userInDB.getPassword())){
			return true;
		} else {
			return false;
		}
	}

	@Override
	public Users getUserByEmail(Users user) throws NullPointerException {
		Users userInDB = userDAO.findUserByEmail(user.getEmail());
		return userInDB;
	}

}
