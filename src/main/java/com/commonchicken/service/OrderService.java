package com.commonchicken.service;

import java.util.List;

import com.commonchicken.dto.OrderDTO;

public interface OrderService {
	void insertOrder(OrderDTO order);
	List<OrderDTO> selectOrderManager(int cnNum);

}
