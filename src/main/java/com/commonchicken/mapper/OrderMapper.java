package com.commonchicken.mapper;

import java.util.List;

import com.commonchicken.dto.MemberDTO;
import com.commonchicken.dto.OrderDTO;

public interface OrderMapper {
	int insertOrder(OrderDTO member);
	List<OrderDTO> selectOrderList();
}
