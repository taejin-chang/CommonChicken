package com.commonchicken.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.commonchicken.dao.OrderManagerDAO;
import com.commonchicken.dto.OrderManagerVO;

@Service
public class OrderManagerServiceImpl implements OrderManagerService {
	
	@Autowired
	OrderManagerDAO orderManagerDAO;

	@Override
	public List<OrderManagerVO> selectOrderMgtList() {
		return orderManagerDAO.selectOrderMgtList();
	}
}
