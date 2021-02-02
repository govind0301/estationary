package com.app.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.pojos.Customer;
@Repository
public class CustomerDaoImpl implements ICustomerDao {
	@Autowired // byType
	private SessionFactory factory;
	
	@Override
	public String addCustomer(Customer transientCustomer) {
		String mesg="Customer added successfully";
		factory.getCurrentSession().persist(transientCustomer);
		return mesg;
	}
	
	@Override
	public Customer authenticateCustomer(String email, String pwd) {
		System.out.println("in dao "+ email+" "+pwd);
		String jpql="select c from Customer c where c.email =:em and c.password=:pa";
		try {
		Customer c = factory.getCurrentSession().createQuery(jpql, Customer.class).setParameter("em", email).
				setParameter("pa", pwd).getSingleResult();
		System.out.println(c);
		return c;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return null;
		}
	}
	
	@Override
	public void updateCustomer(Customer customer) {
		try {
		 factory.getCurrentSession().update(customer);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public Customer getCustomerById(int customerId) {
		
		return factory.getCurrentSession().get(Customer.class, customerId);
	}
	
	
}
