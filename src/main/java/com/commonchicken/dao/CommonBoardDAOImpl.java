package com.commonchicken.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.commonchicken.dto.CommonBoardDTO;
import com.commonchicken.dto.CommonBoardListVO;
import com.commonchicken.mapper.CommonBoardMapper;

@Repository
public class CommonBoardDAOImpl implements CommonBoardDAO {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public int insertCommonBoard(CommonBoardDTO commonboard) {
		return sqlSession.getMapper(CommonBoardMapper.class).insertCommonBoard(commonboard);
	}

	@Override
	public List<CommonBoardListVO> selectCommonBoardList() {
		return sqlSession.getMapper(CommonBoardMapper.class).selectCommonBoardList();
	}

	@Override
	public CommonBoardListVO selectCommonBoard(int cmbdNum) {
		return sqlSession.getMapper(CommonBoardMapper.class).selectCommonBoard(cmbdNum);
	}

	
	
}
