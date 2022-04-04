package com.commonchicken.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.commonchicken.dao.OrderDAO;
import com.commonchicken.dto.OrderDTO;

@Service
public class OrderServiceImpl implements OrderService {
	private static final Logger logger = LoggerFactory.getLogger(OrderServiceImpl.class);
	@Autowired
	OrderDAO orderDAO;

	@Override
	public void insertOrder(OrderDTO order) {
		logger.info("################Service Logger#####################################");
		logger.info(order.getOrdQuantity());
		orderDAO.insertOrder(order);
		
	}

	@Override
	public List<OrderDTO> selectOrderManager(int cnNum) {
		return orderDAO.selectOrderManager(cnNum);
	}

	@Override
	public int updateOrderStatus(Map<String, Object> map) {
		return orderDAO.updateOrderStatus(map);
	}
}
