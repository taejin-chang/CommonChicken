package com.commonchicken.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.commonchicken.dto.CommonBoardDTO;
import com.commonchicken.mapper.CommonBoardMapper;

@Repository
public class CommonBoardDAOImpl implements CommonBoardDAO {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public int insertCommonBoard(CommonBoardDTO commonboard) {
		return sqlSession.getMapper(CommonBoardMapper.class).insertCommonBoard(commonboard);
	}
	
	
}
