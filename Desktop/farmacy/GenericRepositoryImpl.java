package com.ismt.micropharma.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GenericRepositoryImpl<T> implements GenericRepository<T> {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void save(T t) {
		sessionFactory.getCurrentSession().merge(t);
	}

	@Override
	public void delete(T t) {
		sessionFactory.getCurrentSession().delete(t);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> getAll(Class<T> clazz) {
		return sessionFactory.getCurrentSession().createCriteria(clazz).list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public T getById(Class<T> clazz, int id) {
		return (T) sessionFactory.getCurrentSession().get(clazz, id);
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public Session getSession() {
		Session session = sessionFactory.getCurrentSession();
		if (session == null) {
			session = sessionFactory.openSession();
		}
		return session;
	}

}
