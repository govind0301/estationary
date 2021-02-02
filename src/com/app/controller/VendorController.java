package com.app.controller;

import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.dao.IVendorDao;
import com.app.pojos.Product;
import com.app.pojos.Vendor;
import com.app.service.IVendorService;
@Controller
@RequestMapping("/vendor")
public class VendorController {
	boolean status = false;
	@Autowired
	private IVendorService vendor;
	@Autowired
	private IVendorDao vdao;
	@GetMapping("/registration")
	public String showProductform()
	{
		System.out.println("in vendor controller");
		return "/vendor/registration";
	}
	
	@PostMapping("/registration")
	public String vendorRegistration(@RequestParam String title,@RequestParam String  email,@RequestParam String password,
			@RequestParam String  contactNumber)
	{
		System.out.println("in vendor controller");
		System.out.println(title+" "+email+" "+password+" "+contactNumber);
		System.out.println(vendor.addVendor(new Vendor(title,email,contactNumber,password)));
		return "/vendor/login";
	}
	
	@GetMapping("/login")
	public String showVendorLoginForm()
	{
		System.out.println("in vendor login method");
		return "/vendor/login";
	}
	
	
	@PostMapping("/login")
	public String VendorLogin(@RequestParam String email, @RequestParam String password, Model map,HttpSession hs)
	{
		System.out.println("in process login form"+map);//empty map
		try {
			//controller invokes service layer method for authentication
			Vendor authenticateUser = vendor.authenticateVendor(email, password);
			//login successful : valid user login
			if(authenticateUser != null)
			{
				hs.setAttribute("vendor_dtls", authenticateUser);
				hs.setAttribute("mesg","Login Successful");
				status = true;
				return "/vendor/accountDetails";
			}
			else {
				map.addAttribute("mesg","Invalid Login , Pls retry");
				return "/vendor/login";// def nav : RD's forward 
			}
		}
		catch(Exception e)
		{
			System.out.println("err in controller "+e);
			map.addAttribute("mesg","Invalid Login , Pls retry");
			return "/vendor/login";// def nav : RD's forward 
		}
	}
	
	@GetMapping("/vendorProduct")
	public String showVendorProduct()
	{
		if(status == true)
		{
			System.out.println();
			return "/vendor/vendorProduct";
		}
		else
			return "/vendor/login";
		
	}
	
	@GetMapping("/accountDetails")
	public String showVendorAccountDetails()
	{
		if(status == true)
		{
			System.out.println("in account details");
			return "/vendor/accountDetails";
		}
		else
			return "/vendor/login";
		
	}
	
	@GetMapping("/vendorEdit")
	public String showVendorEditForm()
	{
		if(status == true)
		{
		System.out.println();
		return "/vendor/vendorEdit";
		}
		else
			return "/vendor/login";
	}
	
	@PostMapping("/edit")
	public String UpdateEdit(@ModelAttribute("updateVendor") Vendor vendorr,HttpSession hs)
	{
		vendor.updateVendor(vendorr);
		hs.setAttribute("vendor_dtls",vendor.getVendorById(vendorr.getVendorId()));
		System.out.println("in vendor edit method");
		
		return "/vendor/vendorEdit";
	}
	
	@GetMapping("/logout")
	public String vendorLogout(HttpSession hs, Model map, HttpServletRequest request, 
			HttpServletResponse response) {
		System.out.println("in user's logout");
		map.addAttribute("vendor_details", hs.getAttribute("vendor_dtls"));
		hs.invalidate();
		//response.setHeader("refresh", "2;url="+request.getContextPath());
		return "redirect:/vendor/login";// forward view name : /WEB-INF/view/user/logout.jsp
	}
	
	@GetMapping("/order")
	public String getVendorOrders(@RequestParam int vid,Model map)
	{
		System.out.println("vendor orders"+ vdao.vendorOrders(vendor.getVendorById(vid)));
		map.addAttribute("vendor_prod",vdao.vendorOrders(vendor.getVendorById(vid)));
		return "/vendor/vendorOrder";
	}
}
