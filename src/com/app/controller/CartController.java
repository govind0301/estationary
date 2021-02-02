package com.app.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.app.dao.IOrderDao;
import com.app.dao.IOrderDetailDao;
import com.app.pojos.Customer;
import com.app.pojos.OrderDetail;
import com.app.pojos.Product;
import com.app.pojos.order1;
import com.app.service.ICustomerService;
import com.app.service.IProductService;

@Controller
@RequestMapping("/cart")
public class CartController {
	@Autowired
	private IProductService pservice;
	
	@Autowired
	private ICustomerService cservice;
	
	@Autowired
	private IOrderDao orderDao;
	
	@Autowired
	private IOrderDetailDao orderDetailDao;
	@GetMapping("/add")
	public String addToCart(@RequestParam int pid,HttpSession session,RedirectAttributes redirectAttributes)
	{
		if(session.getAttribute("cart")==null)
		{
			List<Product> cart = new ArrayList<>();
			cart.add(pservice.getProductById(pid));
			pservice.manageProductStock(pid,pservice.getProductById(pid).getStock()-1);
			session.setAttribute("cart", cart);
			return "/checkout";
		}
		else
		{
			List<Product> cart = (List<Product>) session.getAttribute("cart");
			int index = exists(pid,cart);
			if(index == 0)
			{
				redirectAttributes.addAttribute("cartMesg", "can't add more than one quatity");
			}
			else {
				cart.add(pservice.getProductById(pid));
				pservice.manageProductStock(pid,pservice.getProductById(pid).getStock()-1);
			}
			return "/checkout";
		}
		
	}

	public int exists(int id,List<Product> cart)
	{
		for(Product p: cart)
		{
			if(p.getpId() == id)
			{
				return 0;
			}
		}
		return 1;
	}
	
	@GetMapping("/checkout")
	public String checkout(HttpSession hs)
	{
		if(hs.getAttribute("Customer_dtls") == null)
		{
			return "redirect:/customer/login";
		}
		else {
			Customer cust = (Customer) hs.getAttribute("Customer_dtls");
			order1 order = new order1();
			order.setCustomer(cservice.getCustomerById(cust.getCustomerId()));
			order.setOrderDate(new Date());
			order.setPayment("Pending");
			orderDao.placeOrder(order);
			
			
			//save order details
			List<Product> cart = (List<Product>) hs.getAttribute("cart");
			for(Product p : cart)
			{
				OrderDetail od = new OrderDetail();
				od.setOrder(order);
				od.setProduct(p);
				od.setVendor(p.getVendor());
				od.setQuantity(1);
				od.setTotalPrice(p.getUnitPrice());
				orderDetailDao.addOrderDetail(od);
			}
			return "redirect:/customer/placeOrder";
		}
		
	}
}
