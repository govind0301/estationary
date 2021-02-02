package com.app.dao;

import com.app.pojos.Customer;

public interface ICustomerDao {
	String addCustomer(Customer transientCustomer);
	Customer authenticateCustomer(String email,String password);
	void updateCustomer(Customer customer);
	Customer getCustomerById(int customerId);
}
