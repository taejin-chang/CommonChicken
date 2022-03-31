package com.commonchicken.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.commonchicken.dao.UserOrderDAO;
import com.commonchicken.dto.OrderVO;
@Service
public class UserOrderServiceImpl implements UserOrderService{

	@Autowired
	UserOrderDAO userOrderDAO;
	
	@Override
	public OrderVO selectOrder() {
		return userOrderDAO.selectOrder();
	}

	@Override
	public List<OrderVO> selectOrderList() {
		return userOrderDAO.selectOrderList();
	}

	@Override
	public int getOrderCount(String memEmail) {
		return userOrderDAO.getOrderCount(memEmail);
	}

	@Override
	public List<OrderVO> selectPagerOrderList(Map<String, Object> map) {
		return userOrderDAO.selectPagerOrderList(map);
	}

}
