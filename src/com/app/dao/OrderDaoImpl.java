package com.app.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.app.pojos.order1;
@Repository
@Transactional
public class OrderDaoImpl implements IOrderDao {

	@Autowired // byType
	private SessionFactory factory;
	
	@Override
	public String placeOrder(order1 order) {
		String mesg="order placed successfully";
		factory.getCurrentSession().persist(order);
		return mesg;
		
	}

}
