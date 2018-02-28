package com.ismt.micropharma.repository;

import java.util.List;

import com.ismt.micropharma.model.Product;

public interface ProductRepository {

	public void saveProductInfo(Product product);

	public void deleteProductInfo(int id);

	public List<Product> getAllProductInfo();

	public Product getProductInfoById(int id);

	public Product getProductInfoByBatchNo(int batchNo);
}
