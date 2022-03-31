package com.commonchicken.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.commonchicken.dao.OrderDAO;
import com.commonchicken.dto.OrderDTO;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	OrderDAO orderDAO;

	@Override
	public void insertOrder(OrderDTO order) {
		orderDAO.insertOrder(order);
		
	}
}
