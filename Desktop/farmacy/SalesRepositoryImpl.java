package com.ismt.micropharma.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ismt.micropharma.model.Sales;

@Repository
public class SalesRepositoryImpl extends GenericRepositoryImpl<Sales> implements SalesRepository {

	@Override
	public void saveSalesInfo(Sales sales) {
		save(sales);
	}

	@Override
	public void deleteSalesInfo(int id) {
		Sales sales = getSalesInfoById(id);
		if (sales != null) {
			delete(sales);
		}
	}

	@Override
	public List<Sales> getAllSalesInfo() {
		return getAll(Sales.class);
	}

	@Override
	public Sales getSalesInfoById(int id) {
		return getById(Sales.class, id);
	}

}
