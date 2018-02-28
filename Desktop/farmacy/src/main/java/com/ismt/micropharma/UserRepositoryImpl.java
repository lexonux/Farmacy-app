package com.ismt.micropharma.repository;

import java.util.List;

import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.ismt.micropharma.model.User;

@Repository
public class UserRepositoryImpl extends GenericRepositoryImpl<User> implements UserRepository {

	@Override
	public void saveUserInfo(User user) {
		save(user);
	}

	@Override
	public void deleteUserInfo(int id) {
		User user = getUserInfoById(id);
		if (user != null) {
			delete(user);
		}
	}

	@Override
	public List<User> getAllUserInfo() {
		return getAll(User.class);
	}

	@Override
	public User getUserInfoById(int id) {
		return getById(User.class, id);
	}

	@Override
	public User getUserInfoByUnameAndPass(String uname, String pass) {
		return (User) getSession().createCriteria(User.class).add(Restrictions.eq("userName", uname))
				.add(Restrictions.eq("password", pass)).uniqueResult();
	}

}
