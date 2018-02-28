package com.ismt.micropharma.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ismt.micropharma.model.User;
import com.ismt.micropharma.repository.UserRepository;

@Transactional
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserRepository userRepository;

	@Override
	public void saveUserInfo(User user) {
		userRepository.saveUserInfo(user);
	}

	@Override
	public void deleteUserInfo(int id) {
		userRepository.deleteUserInfo(id);

	}

	@Override
	public List<User> getAllUserInfo() {
		return userRepository.getAllUserInfo();
	}

	@Override
	public User getUserInfoById(int id) {
		return userRepository.getUserInfoById(id);
	}

	@Override
	public User getUserInfoByUnameAndPass(String uname, String pass) {
		return userRepository.getUserInfoByUnameAndPass(uname, pass);
	}

}
