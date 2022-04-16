package com.commonchicken.service;

import java.util.List;

import com.commonchicken.dto.OrderManagerVO;
import com.commonchicken.dto.OrderManagerVO1;
import com.commonchicken.dto.OrderManagerVO2;

public interface OrderManagerService {
	//List<OrderManagerVO>selectOrderMgtList();
	List<OrderManagerVO1>selectOrderTestList(String stoNum);
	List<OrderManagerVO2>selectOrderTest2List(String stoNum);
}
