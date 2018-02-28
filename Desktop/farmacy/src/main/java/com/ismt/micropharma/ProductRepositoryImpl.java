package com.ismt.micropharma.repository;

import java.util.List;

import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.ismt.micropharma.model.Product;

@Repository
public class ProductRepositoryImpl extends GenericRepositoryImpl<Product> implements ProductRepository {

	@Override
	public void saveProductInfo(Product product) {
		save(product);
	}

	@Override
	public void deleteProductInfo(int id) {
		Product product = getProductInfoById(id);
		if (product != null) {
			delete(product);
		}
	}

	@Override
	public List<Product> getAllProductInfo() {
		return getAll(Product.class);
	}

	@Override
	public Product getProductInfoById(int id) {
		return getById(Product.class, id);
	}

	@Override
	public Product getProductInfoByBatchNo(int batchNo) {
		return (Product) getSession().createCriteria(Product.class).add(Restrictions.eq("batchNo", batchNo))
				.uniqueResult();
	}

}
