package com.app.service;

import java.util.List;

import com.app.pojos.Category;
import com.app.pojos.Product;

public interface IProductService {
	String addProduct(Product product);
	List<Product> getAllProduct();
	List<Product> getProductByCategory(Category category);
	Product getProductById(int pid);
	String manageProductStock(int pid,int stock);
	void updateProduct(Product product);
	String deleteProduct(int pid);
}
