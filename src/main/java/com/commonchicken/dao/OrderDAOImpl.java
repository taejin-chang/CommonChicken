package com.commonchicken.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.commonchicken.controller.OrderController;
import com.commonchicken.dto.OrderDTO;
import com.commonchicken.mapper.OrderMapper;

@Repository
public class OrderDAOImpl implements OrderDAO {
	private static final Logger logger = LoggerFactory.getLogger(OrderDAOImpl.class);

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int insertOrder(OrderDTO order) {
	
		logger.info("################DAO Logger#####################################");
		logger.info(order.getOrdQuantity());
		return sqlSession.getMapper(OrderMapper.class).insertOrder(order);
	}
	
	@Override
	public List<OrderDTO> selectOrderManager(int cnNum) {
		return sqlSession.getMapper(OrderMapper.class).selectOrderManager(cnNum);
	}

	@Override
	public List<OrderDTO> selectOrderList() {
		// TODO Auto-generated method stub
		return null;
	}

}
