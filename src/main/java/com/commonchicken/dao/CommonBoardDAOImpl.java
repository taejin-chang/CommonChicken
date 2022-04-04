package com.commonchicken.dao;

import java.util.List;
import java.util.Map;

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
	public CommonBoardListVO selectCommonBoard(int cmbdNum) {
		return sqlSession.getMapper(CommonBoardMapper.class).selectCommonBoard(cmbdNum);
	}

	@Override
	public int getCommonBoardCount() {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(CommonBoardMapper.class).getCommonBoardCount();
	}


	@Override
	public List<CommonBoardListVO> selectCommonBoardList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(CommonBoardMapper.class).selectCommonBoardList(map);
	}



	
	
}
