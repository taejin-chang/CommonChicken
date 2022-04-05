package com.commonchicken.dao;

import java.util.List;

//import com.commonchicken.dto.OrderManagerVO;
import com.commonchicken.dto.OrderManagerVO1;
import com.commonchicken.dto.OrderManagerVO2;

public interface OrderManagerDAO {
//	List<OrderManagerVO>selectOrderMgtList();
	List<OrderManagerVO1>selectOrderTestList();
	List<OrderManagerVO2>selectOrderTest2List();
}

