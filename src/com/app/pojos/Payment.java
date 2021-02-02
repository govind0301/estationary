package com.app.pojos;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
@Entity
@Table(name="payment")
public class Payment {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int paymentId;
	@DateTimeFormat(pattern="yyyy-MM-dd") 
	@Column(name = "payment_date")
	private LocalDate paymentDate;
	@Column(length = 30)
	private String status;
	
	public Payment(LocalDate paymentDate, String status) {
		super();
		this.paymentDate = paymentDate;
		this.status = status;
	}

	@Override
	public String toString() {
		return "payment [paymentId=" + paymentId + ", paymentDate=" + paymentDate + ", status=" + status + "]";
	}
	
	

}
