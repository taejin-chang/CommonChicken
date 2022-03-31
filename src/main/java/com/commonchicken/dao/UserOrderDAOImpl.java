package com.commonchicken.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.commonchicken.dto.OrderVO;
import com.commonchicken.mapper.UserOrderMapper;
@Repository
public class UserOrderDAOImpl implements UserOrderDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public OrderVO selectOrder() {
		return sqlSession.getMapper(UserOrderMapper.class).selectOrder();
	}

	@Override
	public List<OrderVO> selectOrderList() {
		return sqlSession.getMapper(UserOrderMapper.class).selectOrderList();
	}

	@Override
	public int getOrderCount(String memEmail) {
		return sqlSession.getMapper(UserOrderMapper.class).getOrderCount(memEmail);
	}

	@Override
	public List<OrderVO> selectPagerOrderList(Map<String, Object> map) {
		return sqlSession.getMapper(UserOrderMapper.class).selectPagerOrderList(map);
	}

}
