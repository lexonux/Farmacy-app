package com.ismt.micropharma.repository;

import java.util.List;

public interface GenericRepository<T> {

	public void save(T t);

	public void delete(T t);

	public List<T> getAll(Class<T> clazz);

	public T getById(Class<T> clazz,int id);
}
