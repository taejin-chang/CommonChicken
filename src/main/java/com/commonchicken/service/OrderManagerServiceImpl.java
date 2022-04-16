package com.commonchicken.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.commonchicken.dao.OrderManagerDAO;
//import com.commonchicken.dto.OrderManagerVO;
import com.commonchicken.dto.OrderManagerVO1;
import com.commonchicken.dto.OrderManagerVO2;

@Service
public class OrderManagerServiceImpl implements OrderManagerService {
	
	@Autowired
	OrderManagerDAO orderManagerDAO;

//	@Override
//	public List<OrderManagerVO> selectOrderMgtList() {
//		return orderManagerDAO.selectOrderMgtList();
//	}
	
	@Override
	public List<OrderManagerVO1> selectOrderTestList(String stoNum) {
		return orderManagerDAO.selectOrderTestList(stoNum);

	}
	
	@Override
	public List<OrderManagerVO2> selectOrderTest2List(String stoNum) {
		return orderManagerDAO.selectOrderTest2List(stoNum);
		
	}
}
