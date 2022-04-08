package com.commonchicken.mapper;

import java.util.List;
import java.util.Map;

import com.commonchicken.dto.BoardDTO;

public interface BoardMapper {
	int insertBoard(BoardDTO notice);
	int updateBoard(Map<String, Object> map);
	int updateViews(int brdNum);
	BoardDTO selectBoard(int brdNum);
	List<BoardDTO> selectBoardList(int brdCategory);
	int deleteBoard(int brdNum);
	int getBoardCount(int brdCategory);
	List<BoardDTO> selectPagerBoardList(Map<String,Object> map);
}
