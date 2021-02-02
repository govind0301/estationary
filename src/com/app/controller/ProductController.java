package com.app.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.nio.file.Path;
import java.util.List;

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
import org.springframework.web.multipart.MultipartFile;

import com.app.pojos.Category;
import com.app.pojos.Product;
import com.app.pojos.Vendor;
import com.app.service.IProductService;
import com.app.service.IVendorService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	Path path;
	@Autowired
	private IProductService service;

	@Autowired
	private IVendorService vservice;
	
	
	
	ProductController() {
		System.out.println("in product controller");
	}

	@GetMapping("/add")
	public String showProductform() {
		return "/product/addProduct";
	}

	@PostMapping("/add1")
	public String addProduct(@RequestParam String title,@RequestParam String description,@RequestParam String category,
	 @RequestParam Float unitPrice,@RequestParam Integer stock,final @RequestParam("product_image") MultipartFile file,
	 HttpSession hs,HttpServletRequest request)  { 
		System.out.println("in add product post mapping");
	try { 	
		System.out.println("filename"+file.getOriginalFilename());
			@SuppressWarnings("deprecation")
			String path = request.getRealPath("resources\\images")+File.separator+"products"+File.separator+file.getOriginalFilename();
			System.out.println(path);		
		Product p = new Product(title,description,Category.valueOf(category),unitPrice,stock);
		p.setImageName(file.getOriginalFilename());
		int vid =	((Vendor)hs.getAttribute("vendor_dtls")).getVendorId(); 
		p.setSelectedVendor(vservice.getVendorById(vid)); 
		service.addProduct(p); 
		FileOutputStream fos = new FileOutputStream(path);
		InputStream is = file.getInputStream();
		byte[] data = new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		return "redirect:/vendor/vendorProduct"; 
	  } 
	catch  (Exception e) {
		e.printStackTrace();
		} 
		return	"redirect:/vendor/vendorProduct"; 
	}
	
	@GetMapping("/category")
	public String getProductByCategory(@RequestParam String cat,Model map)
	{
		System.out.println();
		List<Product> categoryProduct = service.getProductByCategory(Category.valueOf(cat));
		map.addAttribute("categoryProduct", categoryProduct);
		return "/product/list";
	}

	@GetMapping("/productDetails")
	public String getProductById(@RequestParam Integer pid,Model map)
	{
		Product prod = service.getProductById(pid);
		map.addAttribute("productDetails", prod);
		return "/product/productDetails";
	}
	
	@GetMapping("/cart")
	public String showCartPage()
	{
		
		return "/checkout";
	}
	
	@GetMapping("/productEdit")
	public String showeditProductForm(@RequestParam Integer pid,Model map)
	{
		Product prod = service.getProductById(pid);
		map.addAttribute("editProduct", prod);
		return "/product/productEdit";
	
	}
	
	@PostMapping("/productEdit")
	public String editProductDetails(@ModelAttribute("updateProduct") Product product,HttpSession hs)
	{
		System.out.println(product);
		System.out.println(product.getImageName());
		int vid =	((Vendor)hs.getAttribute("vendor_dtls")).getVendorId(); 
		product.setSelectedVendor(vservice.getVendorById(vid)); 
		service.updateProduct(product);
		return "/vendor/vendorProduct";
	
	}
	@GetMapping("/productdelete")
	public String deleteProduct(@RequestParam Integer pid)
	{
		System.out.println(pid);
		service.deleteProduct(pid);
		return "/vendor/vendorProduct";
	}
}

