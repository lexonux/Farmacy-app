package com.ismt.micropharma.service;

import java.util.List;

import com.ismt.micropharma.model.User;

public interface UserService {

	public void saveUserInfo(User user);

	public void deleteUserInfo(int id);

	public List<User> getAllUserInfo();

	public User getUserInfoById(int id);
	
	public User getUserInfoByUnameAndPass(String uname, String pass);
}
