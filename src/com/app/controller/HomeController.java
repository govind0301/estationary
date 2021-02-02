package com.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.pojos.Product;
import com.app.service.IProductService;

@Controller
public class HomeController {
	@Autowired
	private IProductService pservice;
	@RequestMapping("/")
	public String showIndexPage(Model map)
	{
		List<Product> products = pservice.getAllProduct();
		map.addAttribute("allProducts", products);
		System.out.println("in home controller"+products.toArray());
		return "/index";
	}
	
	
	

	
}
