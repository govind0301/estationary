package com.app.dao;

import java.util.List;

import com.app.pojos.Product;
import com.app.pojos.Vendor;

public interface IVendorDao {
	String addVendor(Vendor transientVendor);
	Vendor authenticateVendor(String email,String password);
	Vendor getVendorById(int vendorId);
	void updateVendor(Vendor vendor);
	List<Product> vendorOrders(Vendor vendor);
}
