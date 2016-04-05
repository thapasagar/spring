package com.akuma.projectspring.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.akuma.projectspring.models.Users;


@Repository
public class UserDAOImpl implements UserDAO {
	
	/**
	 * We use @PersistenceContext to autowire EntityManager
	 */
	@PersistenceContext
	EntityManager entityManager;
	
	@Override
	public Users findUserByEmail(String email) {
		return new Users();
	}

	@Override
	public List<Users> getAllUsers() {
		return null;
	}

	@Override
	public void createUser(Users user) {
		// TODO Auto-generated method stub
		
	}

}
