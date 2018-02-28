package com.ismt.micropharma.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ismt.micropharma.model.Product;
import com.ismt.micropharma.repository.ProductRepository;

@Transactional
@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductRepository productRepository;

	@Override
	public void saveProductInfo(Product product) {
		productRepository.saveProductInfo(product);
	}

	@Override
	public void deleteProductInfo(int id) {
		productRepository.deleteProductInfo(id);
	}

	@Override
	public List<Product> getAllProductInfo() {
		return productRepository.getAllProductInfo();
	}

	@Override
	public Product getProductInfoById(int id) {
		return productRepository.getProductInfoById(id);
	}

	@Override
	public Product getProductInfoByBatchNo(int batchNo) {
		return productRepository.getProductInfoByBatchNo(batchNo);
	}

}
