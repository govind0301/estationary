package com.app.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.pojos.Customer;
import com.app.pojos.Product;
import com.app.pojos.Vendor;
@Repository
public class VendorDaoImpl implements IVendorDao {
	@Autowired // byType
	private SessionFactory factory;
	
	@Override
	public String addVendor(Vendor transientVendor) {
		String mesg="Vendor added successfully";
		
		factory.getCurrentSession().persist(transientVendor);
		return mesg;
	}
	
	@Override
	public Vendor authenticateVendor(String email, String pwd) {
		String jpql="select v from Vendor v where v.email =:em and v.password=:pa";
		try {
		Vendor v = factory.getCurrentSession().createQuery(jpql, Vendor.class).setParameter("em", email).
				setParameter("pa", pwd).getSingleResult();
		System.out.println(v);
		return v;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return null;
		}
	}

	@Override
	public Vendor getVendorById(int vendorId) {
		return factory.getCurrentSession().get(Vendor.class,vendorId);
	}

	@Override
	public void updateVendor(Vendor vendor) {
		 factory.getCurrentSession().update(vendor);
	}
	
	
	public List<Product> vendorOrders(Vendor vendor)
	{
		try {
		String jpql = "select p from Product p,OrderDetail od where p.vendor=:vid";
		List<Product> p =  factory.openSession().createQuery(jpql,Product.class).setParameter("vid",vendor).getResultList();
		return p;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	
	
}
