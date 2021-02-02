package com.app.pojos;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name="vendor")
public class Vendor {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="vid")
	private Integer vendorId;
	@Column(length=30)
	private String title;
	@Column(unique=true)
	private String email;
	@Column(length=30)
	private String password;
	@Column(length=10)
	private String contactNumber;
	@OneToMany(mappedBy = "vendor", cascade = CascadeType.ALL,fetch = FetchType.EAGER)
	private List<Product> products = new ArrayList<>();

		
	public Vendor()
	{
		this.title = null;
		this.email = null;
		this.contactNumber = null;
		this.password = null;	
	}
	
	public Vendor(String title, String email, String contactNumber) 
	{
		super();
		this.title = title;
		this.email = email;
		this.contactNumber = contactNumber;
	}
		
	public Vendor(String title, String email, String contactNumber,String password) 
	{
		super();
		this.title = title;
		this.email = email;
		this.contactNumber = contactNumber;
		this.password = password;
	}

		public Integer getVendorId() {
		return vendorId;
		}
	
		public void setVendorId(Integer vendorId) {
			this.vendorId = vendorId;
		}

		public String getTitle() {
			return title;
		}

		public void setTitle(String title) {
			this.title = title;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getContactNumber() {
			return contactNumber;
		}
		
		
		public void setPassword(String password) {
			this.password = password;
		}

		public String getPassword() {
			return password;
		}

		public void setContactNumber(String contactNumber) {
			this.contactNumber = contactNumber;
		}
		
		public List<Product> getProducts() {
			return products;
		}

		public void setProducts(List<Product> products) {
			this.products = products;
		}
		
		public void addProduct(Product p)
		{
			//p ---> c
			products.add(p);
			//c ---> p
			p.setSelectedVendor(this);
		}
		public void removeProduct(Product p)
		{
			products.remove(p);
			p.setSelectedVendor(null);
		}

		@Override
		public String toString() {
			return "Vendor [vendorId=" + vendorId + ", title=" + title + ", email=" + email + ", contactNumber="
					+ contactNumber + "]";
		}

}
