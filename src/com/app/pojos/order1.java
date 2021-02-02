package com.app.pojos;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="order1")
public class order1 {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="order_id")
	private int order_id;
	@ManyToOne
	@JoinColumn(name="customer_id")
	private Customer customer;
	@Column(name="payment_status")
	private String payment;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date orderDate;
	
	@OneToMany(mappedBy = "order", cascade = CascadeType.ALL,fetch = FetchType.EAGER)
	private List<OrderDetail> orderProduct = new ArrayList<>();

	public order1()
	{
		
	}
	
	public order1(Customer customer, String payment, Date orderDate) {
		super();
		this.customer = customer;
		this.payment = payment;
		this.orderDate = orderDate;
	}

	public int getOrder_id() {
		return order_id;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	@Override
	public String toString() {
		return "order1 [order_id=" + order_id + ", customer=" + customer + ", payment=" + payment + ", orderDate="
				+ orderDate + "]";
	}
	
	
	
}
 