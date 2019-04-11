package com.cts.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cts.dao.UserDAO;
import com.cts.entity.Bill;
import com.cts.entity.User;
import com.cts.entity.UserRole;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	UserDAO userDAO;

	@Override
	@Transactional
	public List<User> getAllUsers() {
		return userDAO.listAllUsers();
	}

	@Override
	@Transactional
	public void saveUser(User user) {
		userDAO.saveUser(user);
	}

	@Override
	@Transactional
	public User getUser(String username) {

		return userDAO.getUser(username);
	}

	@Override
	@Transactional
	public void deleteUser(String username) {
		userDAO.deleteUser(username);

	}

	@Override
	@Transactional
	public void saveRole(UserRole theUserRole) {
		userDAO.saveUserRole(theUserRole);

	}

	@Override
	@Transactional
	public List<Bill> showAllPaidBills() {
		return userDAO.listAllPaidBills();
	}

}
