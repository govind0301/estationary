package com.app.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.app.pojos.OrderDetail;


@Transactional
@Repository
public class OrderDetailDaoImpl implements IOrderDetailDao{
	@Autowired
	private SessionFactory factory;

	@Override
	public String addOrderDetail(OrderDetail od) {
		String msg = "order detail add in database";
		factory.getCurrentSession().persist(od);
		return msg;
	}
	
	
}
