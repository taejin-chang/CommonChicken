package com.commonchicken.dao;

import java.util.List;

import com.commonchicken.dto.OrderDTO;

public interface OrderDAO {
	int insertOrder(OrderDTO order);
	List<OrderDTO> selectOrderManager(int cnNum);
	List<OrderDTO> selectOrderList();
}
