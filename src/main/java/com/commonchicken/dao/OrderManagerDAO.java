package com.commonchicken.dao;

import java.util.List;

import com.commonchicken.dto.OrderManagerVO;

public interface OrderManagerDAO {
	List<OrderManagerVO>selectOrderMgtList();
}

