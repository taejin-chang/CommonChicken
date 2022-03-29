package com.commonchicken.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.commonchicken.dto.BoardDTO;
import com.commonchicken.mapper.BoardMapper;

@Repository
public class BoardDAOImpl implements BoardDAO {

	public static final Logger logger=LoggerFactory.getLogger(BoardDAOImpl.class);

	
	@Autowired
	SqlSession sqlSession;

	@Override
	public int insertBoard(BoardDTO common) {

		return sqlSession.getMapper(BoardMapper.class).insertBoard(common);
	}

	@Override
	public int updateBoard(BoardDTO common) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public BoardDTO selectBoard(int cmNum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BoardDTO> selectBoardList(int brdCategory) {
		return sqlSession.getMapper(BoardMapper.class).selectBoardList(brdCategory);
	}

	@Override
	public int deleteBoard(int cmNum) {
		return sqlSession.getMapper(BoardMapper.class).deleteBoard(cmNum);
	}

}
