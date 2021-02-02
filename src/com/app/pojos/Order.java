package com.app.pojos;

import javax.persistence.*; 
//@Entity
//@Table(name="order")
public class Order {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="order_id")
	private int order_id;
	//@ManyToOne
	//@JoinColumn(name="customer_id")
	//private Customer customer;
	/*@OneToOne
	@JoinColumn(name="payment_id",nullable = false)
	private Payment payment;*/
}

