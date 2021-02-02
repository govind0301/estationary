package com.app.service;

import com.app.pojos.Vendor;


public interface IVendorService {
	String addVendor(Vendor transientVendor);
	Vendor authenticateVendor(String email,String password);
	Vendor getVendorById(int vendorId);
	void updateVendor(Vendor vendor);
}
