package com.app.service;

import com.app.pojos.Customer;
import com.app.pojos.Vendor;

public interface ICustomerService {
	String addCustomer(Customer transientCustomer);
	Customer authenticateCustomer(String email,String password);
	void updateCustomer(Customer customer);
	Customer getCustomerById(int customerId);
}

