package com.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.IVendorDao;
import com.app.pojos.Vendor;

@Service
@Transactional
public class VendorServiceImpl implements IVendorService {
	@Autowired
	private IVendorDao dao;
	@Override
	public String addVendor(Vendor transientVendor) {
		System.out.println(transientVendor);
		return dao.addVendor(transientVendor);
		
	}
	
	@Override
	public Vendor authenticateVendor(String email, String password) {
		
		return dao.authenticateVendor(email, password);
		
	}

	@Override
	public Vendor getVendorById(int vendorId) {
		return dao.getVendorById(vendorId);
	}
	
	@Override
	public void updateVendor(Vendor vendor) {
		// TODO Auto-generated method stub
		dao.updateVendor(vendor);
	}
	
}
