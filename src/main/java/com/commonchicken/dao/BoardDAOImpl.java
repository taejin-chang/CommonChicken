package com.commonchicken.dao;

import java.util.List;
import java.util.Map;

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
	public int insertBoard(BoardDTO notice) {

		return sqlSession.getMapper(BoardMapper.class).insertBoard(notice);
	}

	@Override
	public int updateBoard(Map<String, Object> map) {
		return sqlSession.getMapper(BoardMapper.class).updateBoard(map);
	}

	@Override
	public BoardDTO selectBoard(int brdNum) {
		return sqlSession.getMapper(BoardMapper.class).selectBoard(brdNum);
	}

	@Override
	public List<BoardDTO> selectBoardList(int brdCategory) {
		return sqlSession.getMapper(BoardMapper.class).selectBoardList(brdCategory);
	}

	@Override
	public int deleteBoard(int brdNum) {
		return sqlSession.getMapper(BoardMapper.class).deleteBoard(brdNum);
	}

	@Override
	public int updateViews(int brdNum) {
		return sqlSession.getMapper(BoardMapper.class).updateViews(brdNum);
	}

	@Override
	public int getBoardCount(int brdCategory) {
		return sqlSession.getMapper(BoardMapper.class).getBoardCount(brdCategory);
	}

	@Override
	public List<BoardDTO> selectPagerBoardList(Map<String, Object> map) {
		return sqlSession.getMapper(BoardMapper.class).selectPagerBoardList(map);
	}



}
