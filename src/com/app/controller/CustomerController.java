package com.app.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.pojos.Customer;
import com.app.service.ICustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	boolean status = false;
	@Autowired
	private ICustomerService customer;
	@GetMapping("/registration")
	public String showProductform()
	{
		System.out.println("in customer controller");
		return "/customer/registration";
	}
	
	@PostMapping("/registration")
	public String customerRegistration(@RequestParam String firstName, @RequestParam String lastName ,@RequestParam String  email,
			@RequestParam String  contactNumber, @RequestParam String address, @RequestParam String pincode ,@RequestParam String password)
	{
		System.out.println("in customer controller");
		System.out.println(firstName+" "+lastName+" "+email+" "+contactNumber+" "+address+" "+pincode+" "+password);
		System.out.println(customer.addCustomer(new Customer(firstName,lastName,email,contactNumber,address,pincode,password)));
		return "/customer/login";
	}
	
	@GetMapping("/login")
	public String showVendorLoginForm()
	{
		System.out.println("in customer login method");
		return "/customer/login";
	}
	
	
	@PostMapping("/login")
	public String CustomerLogin(@RequestParam String email, @RequestParam String password, Model map,HttpSession hs)
	{
		System.out.println("in process login ");//empty map
		try {
			System.out.println("in controller "+ email+" "+password);
			Customer authenticateUser = customer.authenticateCustomer(email, password);
			if(authenticateUser != null)
			{
				hs.setAttribute("Customer_dtls", authenticateUser);
				hs.setAttribute("mesg","Login Successful");
				status = true;
				return "redirect:/customer/accountDetails";
			}
			else {
				map.addAttribute("mesg","Invalid Login , Pls retry");
				return "/customer/login";// def nav : RD's forward 
			}
		}
		catch(Exception e)
		{
			System.out.println("err in controller "+e);
			map.addAttribute("mesg","Invalid Login , Pls retry");
			return "/customer/login";// def nav : RD's forward 
		}
		
	}
	
	@GetMapping("/accountDetails")
	public String showVendorAccountDetails()
	{
		System.out.println("in account details");
		if(status == true)
		{
			return "/accountDetails";
		}
		else
			return "/customer/login";
		
	}
	
	@GetMapping("/logout")
	public String customerLogout(HttpSession hs)
	{
		System.out.println("");
		hs.invalidate();
		return "redirect:/";
	}
	
	@GetMapping("/customerEdit")
	public String showCustomerEditForm()
	{
		if(status == true)
		{
		System.out.println();
		return "/customer/customerEdit";
		}
		else {
			return "/customer/login";
		}
	}
	
	@PostMapping("/edit")
	public String UpdateEdit(@ModelAttribute("updateCustomer") Customer customerr,HttpSession hs)
	{
		customer.updateCustomer(customerr);
		hs.setAttribute("Customer_dtls",customer.getCustomerById(customerr.getCustomerId()));
		System.out.println("in customer edit method"+customerr);
		
		return "redirect:/customer/customerEdit";
	}
	
	@GetMapping("/placeOrder")
	public String gotoPlaceOrder()
	{
		return "/customer/placeOrder";
	}
	
}

