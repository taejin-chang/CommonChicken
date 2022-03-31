package com.commonchicken.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.commonchicken.dto.OrderDTO;
import com.commonchicken.mapper.OrderMapper;

@Repository
public class OrderDAOImpl implements OrderDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int insertOrder(OrderDTO order) {
		return sqlSession.getMapper(OrderMapper.class).insertOrder(order);
	}

	@Override
	public List<OrderDTO> selectOrderList() {
		// TODO Auto-generated method stub
		return null;
	}

}
