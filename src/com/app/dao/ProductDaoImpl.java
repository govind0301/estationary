package com.app.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.pojos.Category;
import com.app.pojos.Customer;
import com.app.pojos.Employee;
import com.app.pojos.Product;
@Repository
public class ProductDaoImpl implements IProductDao {
	

	@Autowired // byType
	private SessionFactory factory;
	
	@Override
	public String addProduct(Product transientProduct) {
		String mesg="Product added successfully";
		factory.getCurrentSession().persist(transientProduct);
		return mesg;
	}

	@Override
	public List<Product> getAllProduct() {
		
		String jpql = "select p from Product p";
		return factory.getCurrentSession().createQuery(jpql,Product.class).getResultList();
		
	}
	
	

	@Override
	public List<Product> getProductByCategory(Category category) {
		// TODO Auto-generated method stub
		String jpql = "select p from Product p where p.category=:param";
		List<Product> products = factory.getCurrentSession().createQuery(jpql,Product.class).setParameter("param",category).getResultList();
		System.out.println(products.toString());
		return products;
	}

	@Override
	public Product getProductById(int pid) {
		
		return factory.getCurrentSession().get(Product.class, pid);
	}

	@Override
	public String manageProductStock(int pid, int stock) {
		System.out.println("in manageProduct stock"+pid+" "+stock);
		String jpql = "UPDATE Product p SET p.stock =:stock WHERE p.pId = :pid";
		try {
		factory.getCurrentSession().createQuery(jpql).setParameter("stock",stock).setParameter("pid",pid).executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		System.out.println("successfully updated stock");
		return "successfully updated stock";
	}
	
	@Override
	public void updateProduct(Product product)
	{
		 factory.getCurrentSession().update(product);
	}

	@Override
	public String deleteProduct(int pid) {
		System.out.println("in service pid"+pid);
		Product product=(Product)factory.getCurrentSession().get(Product.class, pid);
	
		factory.getCurrentSession().delete(product);
		factory.getCurrentSession().flush();
		return "product deleted successfully ";
	}
	
	
}
