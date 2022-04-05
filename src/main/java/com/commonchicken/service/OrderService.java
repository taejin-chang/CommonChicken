package com.commonchicken.service;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.OrderDTO;

public interface OrderService {
	void insertOrder(OrderDTO order);
	List<OrderDTO> selectOrderManager(int cnNum);
	int updateOrderStatus(Map<String,Object>map);


}
