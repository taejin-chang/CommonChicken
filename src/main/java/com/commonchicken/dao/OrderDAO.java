package com.commonchicken.dao;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.OrderDTO;

public interface OrderDAO {
	int insertOrder(OrderDTO order);
	List<OrderDTO> selectOrderManager(int cnNum);
	List<OrderDTO> selectOrderList();
	int updateOrderStatus(Map<String,Object>map);

}
