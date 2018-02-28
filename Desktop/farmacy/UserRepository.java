package com.ismt.micropharma.repository;

import java.util.List;

import com.ismt.micropharma.model.User;

public interface UserRepository {

	public void saveUserInfo(User user);

	public void deleteUserInfo(int id);

	public List<User> getAllUserInfo();

	public User getUserInfoById(int id);
	
	public User getUserInfoByUnameAndPass(String uname, String pass);
}
