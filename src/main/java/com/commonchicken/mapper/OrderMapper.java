package com.commonchicken.mapper;

import java.util.List;

import com.commonchicken.dto.OrderDTO;

public interface OrderMapper {
	int insertOrder(OrderDTO order);
	List<OrderDTO> selectOrderList();
}
