package com.commonchicken.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.commonchicken.dto.CommonStoreVO;
import com.commonchicken.dto.OrderManagerVO;
import com.commonchicken.dto.OrderManagerVO1;
import com.commonchicken.dto.OrderManagerVO2;
import com.commonchicken.dto.StoreDTO;
import com.commonchicken.mapper.OrderManagerMapper;
import com.commonchicken.mapper.StoreMapper;

@Repository
public class OrderManagerDAOImpl implements OrderManagerDAO {

	@Autowired
	SqlSession sqlSession;
	
//	@Override
//	public List<OrderManagerVO> selectOrderMgtList() {
//		return sqlSession.getMapper(OrderManagerMapper.class).selectOrderMgtList();
//	}
	@Override
	public List<OrderManagerVO1> selectOrderTestList() {
		return sqlSession.getMapper(OrderManagerMapper.class).selectOrderTestList();
	}
	@Override
	public List<OrderManagerVO2> selectOrderTest2List() {
		return sqlSession.getMapper(OrderManagerMapper.class).selectOrderTest2List();
	}
}
