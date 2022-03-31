package com.commonchicken.dao;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.OrderVO;

public interface UserOrderDAO {
	
	OrderVO selectOrder();
	List<OrderVO> selectOrderList();
	int getOrderCount(String memEmail);
	List<OrderVO> selectPagerOrderList(Map<String, Object> map);
	
}
