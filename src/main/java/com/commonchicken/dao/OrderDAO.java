package com.commonchicken.dao;

import java.util.List;

import com.commonchicken.dto.OrderDTO;

public interface OrderDAO {
	int insertOrder(OrderDTO member);
	List<OrderDTO> selectOrderList();
}
