package com.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.ICustomerDao;
import com.app.pojos.Customer;
@Service
@Transactional
public class CustomerServiceImpl implements ICustomerService {
	@Autowired
	private ICustomerDao dao;
	@Override
	public String addCustomer(Customer transientCustomer) {
		System.out.println(transientCustomer);
		return dao.addCustomer(transientCustomer);
	}
	
	@Override
	public Customer authenticateCustomer(String email, String password) {
		System.out.println("in service "+ email+" "+password);
		return dao.authenticateCustomer(email, password);
	}

	@Override
	public void updateCustomer(Customer customer) {
		dao.updateCustomer(customer);
	}

	@Override
	public Customer getCustomerById(int customerId) {
		return dao.getCustomerById(customerId);
	}
	
	
	
}