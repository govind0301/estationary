package com.app.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="product")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="pid")
	private Integer pId;
	@Column(length=30)
	private String title;
	@Column(length=5000)
	private String description;
	@Enumerated(EnumType.STRING)
	private Category category;
	private Float unitPrice;
	private Integer stock;
	//image bytes can have large lengths so we specify a value
	//which is more than the default length for picByte column
	@Column(name = "image_name")
	private String imageName;
	@ManyToOne
	@JoinColumn(name="v_id",nullable = false)
	private Vendor vendor;
	
	public Product()
	{
		
	}
	public Product(String title, String description, Category category, Float unitPrice, Integer stock,String imageName) {
		super();
		this.title = title;
		this.description = description;
		this.category = category;
		this.unitPrice = unitPrice;
		this.stock = stock;
		this.imageName = imageName;
	}
	
	public Product(String title, String description, Category category, Float unitPrice, Integer stock) {
		super();
		this.title = title;
		this.description = description;
		this.category = category;
		this.unitPrice = unitPrice;
		this.stock = stock;
		
	}
	
	
	public Integer getpId() {
		return pId;
	}
	public void setpId(Integer pId) {
		this.pId = pId;
	}
	
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Float getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Float unitPrice) {
		this.unitPrice = unitPrice;
	}

	public Integer getStock() {
		return stock;
	}

	public void setStock(Integer stock) {
		this.stock = stock;
	}
	
	
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public Vendor getSelectedVendor() {
		return vendor;
	}
	
	public void setSelectedVendor(Vendor vendor) {
		this.vendor = vendor;
	}
	
	public Vendor getVendor() {
		return vendor;
	}
	
	public void setVendor(Vendor vendor) {
		this.vendor = vendor;
	}

	@Override
	public String toString() {
		return "Product [Id=" + pId + ", title=" + title + ", description=" + description + ", category=" + category
				+ ", unitPrice=" + unitPrice + ", quantity=" + stock + "]";
	}


}
