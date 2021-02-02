package com.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.IProductDao;
import com.app.pojos.Category;
import com.app.pojos.Product;
@Service
@Transactional
public class ProductServiceImpl implements IProductService {
	@Autowired
	private IProductDao dao;
	
	@Override
	public String addProduct(Product transientProduct) {
		System.out.println(transientProduct);
		dao.addProduct(transientProduct);
		return null;
	}

	@Override
	public List<Product> getAllProduct() {
		// TODO Auto-generated method stub
		return dao.getAllProduct();
	}

	@Override
	public List<Product> getProductByCategory(Category category) {
		
		return dao.getProductByCategory(category);
	}

	@Override
	public Product getProductById(int pid) {
		return dao.getProductById(pid);
	}

	@Override
	public String manageProductStock(int pid, int stock) {
		
		return dao.manageProductStock(pid, stock);
	}

	@Override
	public void updateProduct(Product product) {
		dao.updateProduct(product);
		
	}

	@Override
	public String deleteProduct(int pid) {
		// TODO Auto-generated method stub
		System.out.println("in service pid"+pid);
		return dao.deleteProduct(pid);
	}
	
	
	
	

}
