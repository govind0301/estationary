package com.app.pojos;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="customer")
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="cid")
	private int customerId;
	@Column(length=30)
	private String firstName;
	@Column(length=30)
	private String lastName; 
	@Column(unique=true)
	private String email;
	private String contactNumber;
	@Column(length=250)
	private String address;
	@OneToMany(mappedBy="customer")
	private List<order1> order = new ArrayList<>();
	
	private String pincode;
	@Column(length=30)
	private String password;
	public Customer( String firstName, String lastName, String email, String contactNumber, String address,
			String pincode,String password) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.contactNumber = contactNumber;
		this.address = address;
		this.pincode = pincode;
		this.password = password;
	}

	
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}


	public int getCustomerId() {
		return customerId;
	}
	
	
	public void setPassword(String password) {
		this.password= password;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
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

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	
	public String getPassword() {
		return password;
	}

	public List<order1> getOrder() {
		return order;
	}


	public void setOrder(List<order1> order) {
		this.order = order;
	}


	@Override
	public String toString() {
		return "Customer [customerId=" + customerId + ", firstName=" + firstName + ", lastName=" + lastName + ", email="
				+ email + ", contactNumber=" + contactNumber + ", address=" + address + ", pincode=" + pincode + "]";
	}

}
