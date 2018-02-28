package com.ismt.micropharma.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ismt.micropharma.model.Sales;
import com.ismt.micropharma.repository.SalesRepository;

@Transactional
@Service
public class SalesServiceImpl implements SalesService {

	@Autowired
	private SalesRepository salesRepository;

	@Override
	public void saveSalesInfo(Sales sales) {
		salesRepository.saveSalesInfo(sales);
	}

	@Override
	public void deleteSalesInfo(int id) {
		salesRepository.deleteSalesInfo(id);

	}

	@Override
	public List<Sales> getAllSalesInfo() {
		return salesRepository.getAllSalesInfo();
	}

	@Override
	public Sales getSalesInfoById(int id) {
		return salesRepository.getSalesInfoById(id);
	}

}
