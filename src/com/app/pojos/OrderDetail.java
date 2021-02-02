package com.app.pojos;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="order_details")
public class OrderDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="odetail_id")
	private int orderdetailId;
	@ManyToOne
	@JoinColumn(name="product_id")
	private Product product;
	private int quantity;	
	private float totalPrice;
	@ManyToOne
	@JoinColumn(name="order_id")
	private order1 order;  
	@ManyToOne
	@JoinColumn(name="vendor_id")
	private Vendor vendor;
	public OrderDetail()
	{
		
	}
	public OrderDetail( int quantity, float totalPrice) {
		super();
		this.quantity = quantity;
		this.totalPrice = totalPrice;
	}
	
	public Product getProduct() {
		return product;
	}
	
	public void setProduct(Product product) {
		this.product = product;
	}

	public void setOrderdetailId(int orderdetailId) {
		this.orderdetailId = orderdetailId;
	}

	public void setOrder(order1 order) {
		this.order = order;
	}

	public int getOrderdetailId() {
		return orderdetailId;
	}
	
	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public float getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(float totalPrice) {
		this.totalPrice = totalPrice;
	}

	public order1 getOrder() {
		return order;
	}
	public Vendor getVendor() {
		return vendor;
	}
	public void setVendor(Vendor vendor) {
		this.vendor = vendor;
	}
	
	
}